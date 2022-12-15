import pandas as pd
import sqlalchemy as sa
import numpy as np

# Connection Properties for SQL Server Database
connection_string = (
    'Driver=ODBC Driver 13 for SQL Server;'
    'Server=tcp:tourismandhospitality.database.windows.net;'
    'Database=Tourism_Hospitality;'
    'UID=user;'
    'PWD=Password@;'
    'Trusted_Connection=no;'
)

connection_url = sa.engine.URL.create(
    "mssql+pyodbc",
    query=dict(odbc_connect=connection_string)
)

conn = sa.create_engine(connection_url, fast_executemany=True)
df_hotels = pd.read_csv(r'C:\Users\Dell\Desktop\DMDD_Assignment3\US_Hotels_Updated.csv')

df_hotels.to_sql("hotels", conn, schema="dbo", if_exists="append", index=False)

