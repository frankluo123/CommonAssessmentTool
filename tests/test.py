from logic import interpret_and_calculate
from itertools import combinations_with_replacement, product
from fastapi.testclient import TestClient
from app.main import app
from app.database import Base, get_db
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# def test_interpret_and_calculate():
#     print("running tests")
#     data = {"23","1","1","1","1","0","1","2","2","3","2",
#     "2","3","2","1","1","1","1","1","1","0","1","1","1"
#     }
#     result = interpret_and_calculate(data)
#     print(data)

# Cartesian product of [0, 1] repeated 2 times
result = list(product([0, 1], repeat=2))

# Output: [(0, 0), (0, 1), (1, 0), (1, 1)]
print(result)

result = list(combinations_with_replacement([0, 1], 2))

# Output: [(0, 0), (0, 1), (1, 1)]
print(result)


# MySQL test database configuration
SQLALCHEMY_TEST_DATABASE_URL = "mysql+pymysql://username:password@localhost/test_db"
# Connect to the test database
engine = create_engine(SQLALCHEMY_TEST_DATABASE_URL)
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Override get_db dependency to use the test database
def override_get_db():
    try:
        db = TestingSessionLocal()
        yield db
    finally:
        db.close()

app.dependency_overrides[get_db] = override_get_db

# Clear existing tables to ensure tests don’t interfere with each other
Base.metadata.drop_all(bind=engine)
# Create fresh tables
Base.metadata.create_all(bind=engine)

client = TestClient(app)

def test_create_client():
    response = client.post(
        "/clients/",
        json={"name": "John Doe", "email": "john.doe@example.com", "employment_status": "Employed"},
    )
    assert response.status_code == 201
    data = response.json()
    assert data["name"] == "John Doe"
    assert data["email"] == "john.doe@example.com"
    assert data["employment_status"] == "Employed"
    assert "id" in data

def test_get_all_clients():
    response = client.get("/clients/")
    assert response.status_code == 200
    assert isinstance(response.json(), list)

def test_update_non_existent_client():
    response = client.put(
        "/clients/9999",
        json={"name": "Non Existent Client"},
    )
    assert response.status_code == 404
    assert response.json() == {"detail": "Client not found"}

def test_update_client():
    # Create a client
    response = client.post(
        "/clients/",
        json={
            "name": "Mark Brown",
            "email": "mark.brown@example.com",
            "employment_status": "Self-Employed"
        },
    )
    client_id = response.json()["id"]

    # Update the client's information
    response = client.put(
        f"/clients/{client_id}",
        json={
            "name": "Mark B.",
            "email": "mark.b@example.com"
        },
    )
    assert response.status_code == 200
    data = response.json()
    assert data["name"] == "Mark B."
    assert data["email"] == "mark.b@example.com"
    assert data["employment_status"] == "Self-Employed"

def test_delete_non_existent_client():
    response = client.delete("/clients/9999")
    assert response.status_code == 404
    assert response.json() == {"detail": "Client not found"}

def test_get_client_by_id():
    # Create a client
    response = client.post(
        "/clients/",
        json={
            "name": "Jane Smith",
            "email": "jane.smith@example.com",
            "employment_status": "Unemployed"
        },
    )
    client_id = response.json()["id"]

    # Retrieve the client by ID
    response = client.get(f"/clients/{client_id}")
    assert response.status_code == 200
    data = response.json()
    assert data["name"] == "Jane Smith"
    assert data["email"] == "jane.smith@example.com"
    assert data["employment_status"] == "Unemployed"

def test_delete_client():
    # Create a client
    response = client.post(
        "/clients/",
        json={
            "name": "Anna Lee",
            "email": "anna.lee@example.com",
            "employment_status": "Part-Time"
        },
    )
    client_id = response.json()["id"]

    # Delete the client
    response = client.delete(f"/clients/{client_id}")
    assert response.status_code == 200
    assert response.json() == {"detail": f"Client with ID {client_id} is deleted successfully!"}

    # Verify the client no longer exists
    response = client.get(f"/clients/{client_id}")
    assert response.status_code == 404