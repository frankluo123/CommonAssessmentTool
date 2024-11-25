'''Module contains tests for CRUD functions'''
# pylint: disable=unused-import
# pylint: disable=too-few-public-methods

from unittest.mock import MagicMock
from app.clients.crud import (
    create_client, get_client, get_clients, update_client, delete_client
)
from app.clients.schema import ClientCreate, ClientUpdate, ClientBase


class MockClient:
    '''Create mock client'''

    def __init__(self, **kwargs):
        self.__dict__.update(kwargs)


def test_create_client():
    '''Test create_client'''
    # Mock the database session
    mock_db = MagicMock()

    # Provide valid test data matching the ClientCreate schema
    client_data = ClientBase(
        name="Ann Lu",
        age=35,
        gender="Male",
        work_experience=10,
        canada_workex=5,
        dep_num=2,
        canada_born=True,
        citizen_status="Citizen",
        level_of_schooling="Bachelor's Degree",
        fluent_english=True,
        reading_english_scale=5,
        speaking_english_scale=5,
        writing_english_scale=5,
        numeracy_scale=4,
        computer_scale=3,
        transportation_bool=True,
        caregiver_bool=False,
        housing="Owned",
        income_source="Employment",
        felony_bool=False,
        attending_school=False,
        currently_employed=True,
        substance_use=False,
        time_unemployed=0,
        need_mental_health_support_bool=False
    )

    # Call the function to test
    result = create_client(mock_db, client=client_data)

    # Assert that the mock database methods were called correctly
    mock_db.add.assert_called_once_with(result)
    mock_db.commit.assert_called_once()

    # Verify the result is the same as the input data (or matches expectations)
    assert result.name == client_data.name
    assert result.age == client_data.age
    assert result.gender == client_data.gender


def test_get_client():
    '''Test retrieving client by client_id'''
    mock_db = MagicMock()
    mock_db.query().filter().first.return_value = {"id": 1, "name": "Test Client"}

    result = get_client(mock_db, client_id=1)
    assert result == {"id": 1, "name": "Test Client"}
    mock_db.query().filter().first.assert_called_once()


def test_get_clients():
    '''Test retrieving all clients'''
    mock_db = MagicMock()
    mock_db.query().offset().limit().all.return_value = [
        {"id": 1, "name": "Client 1"},
        {"id": 2, "name": "Client 2"},
    ]

    result = get_clients(mock_db, skip=0, limit=10)
    assert len(result) == 2
    assert result[0]["name"] == "Client 1"


def test_update_client():
    '''Test updating a client'''
    # Mock the database session
    mock_db = MagicMock()

    # Existing client in the database
    existing_client = MockClient(
        id=1,
        name="Old Name",
        age=30,
        gender="Male",
        work_experience=5
    )

    # Updated client data
    updated_data = ClientUpdate(
        name="New Name",
        age=35,
        gender="Male",
        work_experience=10
    )

    # Mock the behavior of query.filter().first()
    mock_db.query().filter().first.return_value = existing_client

    # Call the function to test
    result = update_client(mock_db, client_id=1, client=updated_data)

    # Assert that the mock database methods were called correctly
    mock_db.commit.assert_called_once()

    # Assert that the attributes were updated correctly
    assert result.name == updated_data.name
    assert result.age == updated_data.age
    assert result.gender == updated_data.gender
    assert result.work_experience == updated_data.work_experience


def test_delete_client():
    '''Test deleting a client'''
    mock_db = MagicMock()
    mock_db.query().filter().first.return_value = {"id": 1, "name": "Test Client"}

    delete_client(mock_db, client_id=1)

    mock_db.delete.assert_called_once()
    mock_db.commit.assert_called_once()
