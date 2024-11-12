CREATE SCHEMA IF NOT EXISTS Clients;

USE Clients;

DROP TABLE IF EXISTS Persons;

CREATE TABLE Persons (
	person_id BIGINT AUTO_INCREMENT,
	age INT,
  gender VARCHAR(255),
  work_experience INT,
  canada_workex INT,
  dep_num INT,
  canada_born VARCHAR(255),
  citizen_status VARCHAR(255),
  level_of_schooling VARCHAR(255),
  fluent_english VARCHAR(255),
  reading_english_scale INT,
  speaking_english_scale INT,
  writing_english_scale INT,
	numeracy_scale INT,
	computer_scale INT,
	transportation_bool VARCHAR(255),
  caregiver_bool VARCHAR(255),
	housing VARCHAR(255),
  income_source VARCHAR(255),
  felony_bool VARCHAR(255),
  attending_school VARCHAR(255),
	currently_employed VARCHAR(255),
  substance_use VARCHAR(255),
  time_unemployed INT,
  need_mental_health_support_bool VARCHAR(255),
  CONSTRAINT pk_Persons_PersonId PRIMARY KEY (person_id)
);