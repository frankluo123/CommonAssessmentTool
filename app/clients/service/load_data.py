'''Module containing functions for load_data'''

import pandas as pd
from app.database import engine


df = pd.read_csv('data_commontool.csv')
df.to_sql('persons', engine, if_exists='append', index=False)
