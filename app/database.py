'''Module containing functions to define database model'''
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

db_config = {
    'drivername': 'mysql+pymysql',
    'host': 'localhost',
    'port': 3306,
    'username': 'root',
    'password': 'qz325299',
    'database': 'common_assess'
}

# pylint: disable=line-too-long
engine = create_engine(f"{db_config['drivername']}://{db_config['username']}:{db_config['password']}@{db_config['host']}:{db_config['port']}/{db_config['database']}")

# Create a base class to define the database model
Base = declarative_base()

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    '''Get database'''
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
