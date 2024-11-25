'''Module containing functions for logic'''

import os
import pickle
from itertools import product
import numpy as np


column_intervention = [
    'Life Stabilization',
    'General Employment Assistance Services',
    'Retention Services',
    'Specialized Services',
    'Employment-Related Financial Supports for Job Seekers and Employers', 
    'Employer Financial Supports',
    'Enhanced Referrals for Skills Development']

# Loads the model into logic
current_dir = os.path.dirname(os.path.abspath(__file__))
filename = os.path.join(current_dir, 'model.pkl')
# pylint: disable=consider-using-with
model = pickle.load(open(filename, "rb"))


def clean_input_data(data):
    '''Translate input into what we trained the model on, numerical data in a specific order'''
    columns = ["age", "gender", "work_experience", "canada_workex", "dep_num", "canada_born",
                "citizen_status","level_of_schooling","fluent_english","reading_english_scale",
                "speaking_english_scale", "writing_english_scale","numeracy_scale",
                "computer_scale", "transportation_bool", "caregiver_bool", "housing",
                "income_source", "felony_bool", "attending_school", "currently_employed",
                "substance_use", "time_unemployed", "need_mental_health_support_bool"]
    demographics = {
        'age': data['age'],
        'gender': data['gender'],
        'work_experience': data['work_experience'],
        'canada_workex': data['canada_workex'],
        'dep_num': data['dep_num'],
        'canada_born': data['canada_born'],
        'citizen_status': data['citizen_status'],
        'level_of_schooling': data['level_of_schooling'],
        'fluent_english': data['fluent_english'],
        'reading_english_scale': data['reading_english_scale'],
        'speaking_english_scale': data['speaking_english_scale'],
        'writing_english_scale': data['writing_english_scale'],
        'numeracy_scale': data['numeracy_scale'],
        'computer_scale': data['computer_scale'],
        'transportation_bool': data['transportation_bool'],
        'caregiver_bool': data['caregiver_bool'],
        'housing': data['housing'],
        'income_source': data['income_source'],
        'felony_bool': data['felony_bool'],
        'attending_school': data['attending_school'],
        'currently_employed': data['currently_employed'],
        'substance_use': data['substance_use'],
        'time_unemployed': data['time_unemployed'],
        'need_mental_health_support_bool': data['need_mental_health_support_bool']
    }
    output = []
    for column in columns:
         # If you want to pass a value, can return any value.
        data = demographics.get(column, None)
        if isinstance(data, str):
            data = convert_text(column, data)
        output.append(data)
    return output


def convert_text(column, data:str):
    '''Convert text answers from front end into digits.
    TODO: ensure that categorical columns match the valid answers in FormNew.jsx (L131)'''
    categorical_cols_integers = [
        {
            "": 0,
            "true": 1,
            "false": 0,
            "no": 0,
            "yes": 1,
            "No": 0,
            "Yes": 1
        },
        {
            'Grade 0-8': 1,
            'Grade 9': 2,
            'Grade 10': 3,
            'Grade 11': 4,
            'Grade 12 or equivalent': 5,
            'OAC or Grade 13': 6,
            'Some college': 7,
            'Some university': 8,
            'Some apprenticeship': 9,
            'Certificate of Apprenticeship': 10,
            'Journeyperson': 11,
            'Certificate/Diploma': 12,
            'Bachelor’s degree': 13,
            'Post graduate': 14
        },
        {
            'Renting-private': 1,
            'Renting-subsidized': 2,
            'Boarding or lodging': 3,
            'Homeowner': 4,
            'Living with family/friend': 5,
            'Institution': 6,
            'Temporary second residence': 7,
            'Band-owned home': 8,
            'Homeless or transient': 9,
            'Emergency hostel': 10
        },
        {
            'No Source of Income': 1,
            'Employment Insurance': 2,
            'Workplace Safety and Insurance Board': 3,
            'Ontario Works applied or receiving': 4,
            'Ontario Disability Support Program applied or receiving': 5,
            'Dependent of someone receiving OW or ODSP': 6,
            'Crown Ward': 7,
            'Employment': 8,
            'Self-Employment': 9,
            'Other (specify)': 10
        }
    ]
    for category in categorical_cols_integers:
        print(f"data: {data}")
        print(f"column: {column}")
        if data in category:
            return category[data]

    if isinstance(data, str) and data.isnumeric():
        return int(data)

    return data


def create_matrix(row):
    '''Create 128 possible combos to run every possibility through model'''
    data = [row.copy() for _ in range(128)]
    perms = intervention_permutations(7)
    data = np.array(data)
    perms = np.array(perms)
    matrix = np.concatenate((data,perms), axis = 1)
    return np.array(matrix)


def intervention_permutations(num):
    '''Create matrix of permutations of 1 and 0 of num length'''
    perms = list(product([0,1],repeat=num))
    return np.array(perms)


def get_baseline_row(row):
    '''Get baseline row'''
    print(type(row))
    base_interventions = np.array([0]*7) # no interventions
    row = np.array(row)
    print(row)
    print(type(row))
    line = np.concatenate((row,base_interventions))
    return line

def intervention_row_to_names(row):
    '''Reture names with the intervention'''
    names = []
    for i, value in enumerate(row):
        if value == 1:
            names.append(column_intervention[i])
    return names

def process_results(baseline, results):
    '''Example:
    {
        baseline_probability: 80 #baseline percentage point with no interventions
        results: [
            #new percentange with intervention combinations and list of intervention names
            (85, [A,B,C])
            (89, [B,C])
            (91, [D,E])
        ]
    }
    '''
    result_list= []
    for row in results:
        percent = row[-1]
        names = intervention_row_to_names(row)
        result_list.append((percent,names))

    output = {
        #if it's an array, want the value inside of the array
        "baseline": baseline[-1],
        "interventions": result_list,
    }
    return output


def interpret_and_calculate(data):
    '''Interpret and calculate from data'''
    raw_data = clean_input_data(data)
    baseline_row = get_baseline_row(raw_data)
    baseline_row = baseline_row.reshape(1, -1)
    print("BASELINE ROW IS",baseline_row)
    intervention_rows = create_matrix(raw_data)
    baseline_prediction = model.predict(baseline_row)
    intervention_predictions = model.predict(intervention_rows)
    intervention_predictions = intervention_predictions.reshape(-1, 1) # vertical column
    result_matrix = np.concatenate((intervention_rows,intervention_predictions), axis = 1)

    # sort this matrix based on prediction
    # print("RESULT SAMPLE::", result_matrix[:5])
    #take all rows and only last column, gives back list of indexes sorted
    #indexing the matrix by the order
    result_order = result_matrix[:,-1].argsort()
    result_matrix = result_matrix[result_order]

    # slice matrix to only top N results
    #-8 for interventions and prediction, want top 3, 3 combinations of intervention
    result_matrix = result_matrix[-3:,-8:]
    # post process results if needed ie make list of names for each row
    results = process_results(baseline_prediction,result_matrix)
    # build output dict
    print(f"RESULTS: {results}")
    return results


if __name__ == "__main__":
    print("running")
    new_client = {
        "age": "23",
        "gender": "1",
        "work_experience": "1",
        "canada_workex": "1",
        "dep_num": "0",
        "canada_born": "1",
        "citizen_status": "2",
        "level_of_schooling": "2",
        "fluent_english": "3",
        "reading_english_scale": "2",
        "speaking_english_scale": "2",
        "writing_english_scale": "3",
        "numeracy_scale": "2",
        "computer_scale": "3",
        "transportation_bool": "2",
        "caregiver_bool": "1",
        "housing": "1",
        "income_source": "5",
        "felony_bool": "1",
        "attending_school": "0",
        "currently_employed": "1",
        "substance_use": "1",
        "time_unemployed": "1",
        "need_mental_health_support_bool": "1"
    }

    print(interpret_and_calculate(new_client))
