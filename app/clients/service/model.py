'''Creates the model'''
# pylint: disable=all

import pickle
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor


def prepare_models():
    '''Prepare models'''
    # Load dataset and define the features and labels
    backend_code = pd.read_csv('data_commontool.csv')
    # Define categorical columns and interventions
    categorical_cols = ['age',
                        'gender', #bool
                        'work_experience', #years of work experience
                        'canada_workex',#years of work experience in canada
                        'dep_num', #number of dependents
                        'canada_born', #born in canada
                        'citizen_status', #citizen status
                        'level_of_schooling', #highest level achieved (1-14)
                        'fluent_english', #english level fluency, scale (1-10)
                        'reading_english_scale', #reading scale (1-10)
                        'speaking_english_scale', #speaking level comfort (1-10)
                        'writing_english_scale', #writing scale (1-10)
                        'numeracy_scale', #numeracy scale (1-10)
                        'computer_scale', #computer use scale (1-10)
                        'transportation_bool', #need transportation support (bool)
                        'caregiver_bool', #is a primary care giver bool
                        'housing', #housing situation 1-10
                        'income_source', #source of income 1-10
                        'felony_bool', #has a felony bool
                        'attending_school', #currently a student bool
                        'currently_employed', #currently employed bool
                        'substance_use', #disorder, bool
                        'time_unemployed', #number of years unemployed
                        'need_mental_health_support_bool'] #need support
    interventions = [
        'employment_assistance',
        'life_stabilization',
        'retention_services',
        'specialized_services',
        'employment_related_financial_supports',
        'employer_financial_supports',
        'enhanced_referrals'
    ]
    categorical_cols.extend(interventions)
    # Prepare training data
    x_categorical_baseline = backendCode[categorical_cols]
    y_baseline = backendCode['success_rate']
    x_categorical_baseline = np.array(x_categorical_baseline)
    y_baseline = np.array(y_baseline)
    x_train_baseline, x_test_baseline, y_train_baseline, y_test_baseline = train_test_split(
        x_categorical_baseline, y_baseline, test_size=0.2, random_state=42)

    rf_model_baseline = RandomForestRegressor(n_estimators=100, random_state=42)
    rf_model_baseline.fit(x_train_baseline, y_train_baseline)

    return rf_model_baseline


def main():
    '''Prepare and start model'''

    print("Start model.")
    model = prepare_models()

    pickle.dump(model, open("model.pkl", "wb")) #saves model to the file name input, write binary
    model = pickle.load(open("model.pkl", "rb")) #read binary


if __name__ == "__main__":
    main()
