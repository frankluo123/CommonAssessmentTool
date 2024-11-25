'''Module providing functions for building the client model'''

from sqlalchemy import Column, Integer, String, Boolean
from app.database import Base  # Need to create database configuration module in app.database


# pylint: disable=too-few-public-methods
class Client(Base):
    '''Class defining the client model'''
    # Setting the table name for this model to 'clients'
    __tablename__ = 'clients'

    # Primary Key column, unique identifier for each client record
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, index=True)
    age = Column(Integer)
    gender = Column(String)
    work_experience = Column(Integer)
    canada_workex = Column(Integer)
    dep_num = Column(Integer)
    canada_born = Column(Boolean)
    citizen_status = Column(String)
    level_of_schooling = Column(String)
    fluent_english = Column(Boolean)
    reading_english_scale = Column(Integer)
    speaking_english_scale = Column(Integer)
    writing_english_scale = Column(Integer)
    numeracy_scale = Column(Integer)
    computer_scale = Column(Integer)
    transportation_bool = Column(Boolean)
    caregiver_bool = Column(Boolean)
    housing = Column(String)
    income_source = Column(String)
    felony_bool = Column(Boolean)
    attending_school = Column(Boolean)
    currently_employed = Column(Boolean)
    substance_use = Column(Boolean)
    time_unemployed = Column(Integer)
    need_mental_health_support_bool = Column(Boolean)

    def __repr__(self):
        '''Provide string representation of the Client instance'''
        return f"<Client(name={self.name}, age={self.age}, gender={self.gender})>"
