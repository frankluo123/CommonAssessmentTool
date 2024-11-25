"""Model contains functions to create schema"""

from typing import Optional
from pydantic import BaseModel

# pylint: disable=too-few-public-methods
class PredictionInput(BaseModel):
    """Create schema for PredictionInput"""

    age: int
    gender: str
    work_experience: int
    canada_workex: int
    dep_num: int
    canada_born: str
    citizen_status: str
    level_of_schooling: str
    fluent_english: str
    reading_english_scale: int
    speaking_english_scale: int
    writing_english_scale: int
    numeracy_scale: int
    computer_scale: int
    transportation_bool: str
    caregiver_bool: str
    housing: str
    income_source: str
    felony_bool: str
    attending_school: str
    currently_employed: str
    substance_use: str
    time_unemployed: int
    need_mental_health_support_bool: str


class ClientBase(BaseModel):
    """Create schema for ClientBase"""

    name: str
    age: int
    gender: str
    work_experience: int
    canada_workex: int
    dep_num: int
    canada_born: bool
    citizen_status: str
    level_of_schooling: str
    fluent_english: bool
    reading_english_scale: int
    speaking_english_scale: int
    writing_english_scale: int
    numeracy_scale: int
    computer_scale: int
    transportation_bool: bool
    caregiver_bool: bool
    housing: str
    income_source: str
    felony_bool: bool
    attending_school: bool
    currently_employed: bool
    substance_use: bool
    time_unemployed: int
    need_mental_health_support_bool: bool


class ClientCreate(ClientBase):
    """Schema for creating a new client"""


class ClientUpdate(BaseModel):
    """Schema for updating client information with optional fields"""

    name: Optional[str] = None
    age: Optional[int] = None
    gender: Optional[str] = None
    work_experience: Optional[int] = None
    canada_workex: Optional[int] = None
    dep_num: Optional[int] = None
    canada_born: Optional[bool] = None
    citizen_status: Optional[str] = None
    level_of_schooling: Optional[str] = None
    fluent_english: Optional[bool] = None
    reading_english_scale: Optional[int] = None
    speaking_english_scale: Optional[int] = None
    writing_english_scale: Optional[int] = None
    numeracy_scale: Optional[int] = None
    computer_scale: Optional[int] = None
    transportation_bool: Optional[bool] = None
    caregiver_bool: Optional[bool] = None
    housing: Optional[str] = None
    income_source: Optional[str] = None
    felony_bool: Optional[bool] = None
    attending_school: Optional[bool] = None
    currently_employed: Optional[bool] = None
    substance_use: Optional[bool] = None
    time_unemployed: Optional[int] = None
    need_mental_health_support_bool: Optional[bool] = None


class Client(ClientBase):
    """Schema for reading client information, with ORM mode enabled"""

    id: int

    class Config:
        '''Class for configuring ORM'''
        orm_mode = True
