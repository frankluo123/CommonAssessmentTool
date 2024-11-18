from app.database import engine
import pandas as pd


def load_csv_to_db(csv_path, table_name, model='append'):
    """
    model:
        append: Append to the table.
        replace: Replace the table.
        fail: Raise an error if the table already exists.
    """
    df = pd.read_csv(csv_path)
    if model not in ['append', 'replace', 'fail']:
        raise ValueError("Model must be 'append', 'replace', or 'fail'.")
    try:
        df.to_sql(table_name, engine, if_exists=model, index=False)
    except Exception as e:
        print(f"Error: {e}")
    print('success csv to db !')


def read_db_to_csv(file_path, table_name, sql=None, mode='w'):
    """
    mode:
        w: Write to the file.
        a: Append to the file.
    """
    query = f"SELECT * FROM {table_name}"
    if sql is not None:
        query = sql
    try:
        df = pd.read_sql(query, engine)
        df.to_csv(file_path, index=False, mode=mode)
    except Exception as e:
        print(f"Error: {e}")
    print('success db to csv file !')


if __name__ == '__main__':
    load_csv_to_db(r"C:\Users\zq789\OneDrive\Desktop\common_assess\data_sample.csv", 'persons', 'replace')