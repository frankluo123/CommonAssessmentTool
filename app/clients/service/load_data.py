from app.database import engine
import pandas as pd

df = pd.read_csv('data_commontool.csv')
df.to_sql('persons', engine, if_exists='append', index=False)