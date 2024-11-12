from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from typing import List

from app.clients.service.logic import interpret_and_calculate
from app.clients.schema import PredictionInput, ClientCreate, ClientUpdate, Client
from app.clients.crud import create_client, get_client, get_clients, update_client, delete_client
from app.database import get_db  # Need to create a get_db function to provide DB sessions

router = APIRouter(prefix="/clients", tags=["clients"])

# Prediction Endpoint
@router.post("/predictions")
async def predict(data: PredictionInput):
    print("HERE")
    print(data.model_dump())
    return interpret_and_calculate(data.model_dump())

# Creating a new client
@router.post("/", response_model=Client)
async def create_new_client(client: ClientCreate, db: Session = Depends(get_db)):
    return create_client(db=db, client=client)

# Retrieving a specific client by ID
@router.get("/{client_id}", response_model=Client)
async def read_client(client_id: int, db: Session = Depends(get_db)):
    client = get_client(db=db, client_id=client_id)
    if client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return client

# Retrieving all clients with options to skip a certain number of results and limit the number of results shown
@router.get("/", response_model=List[Client])
async def read_clients(skip: int = 0, limit: int = 10, db: Session = Depends(get_db)):
    return get_clients(db=db, skip=skip, limit=limit)

# Updating a client's information
@router.put("/{client_id}", response_model=Client)
async def update_existing_client(client_id: int, client: ClientUpdate, db: Session = Depends(get_db)):
    db_client = update_client(db=db, client_id=client_id, client=client)
    if db_client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return {f"Client with ID " {client_id} "is updated successfully!"}

# Deleting a client
@router.delete("/{client_id}", response_model=Client)
async def delete_existing_client(client_id: int, db: Session = Depends(get_db)):
    db_client = delete_client(db=db, client_id=client_id)
    if db_client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return {f"Client with ID " {client_id} "is deleted successfully!"}
