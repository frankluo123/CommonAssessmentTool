'''Model containing functions for router'''

from typing import List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.clients.service.logic import interpret_and_calculate
from app.clients.schema import PredictionInput, ClientCreate, ClientUpdate, Client
from app.clients.crud import create_client, get_client, get_clients, update_client, delete_client
from app.database import get_db  # Need to create a get_db function to provide DB sessions


router = APIRouter(prefix="/clients", tags=["clients"])

@router.post("/predictions")
async def predict(data: PredictionInput):
    '''Prediction endpoint'''
    print("HERE")
    print(data.model_dump())
    return interpret_and_calculate(data.model_dump())


@router.post("/", response_model=Client)
async def create_new_client(client: ClientCreate, db: Session = Depends(get_db)):
    '''Create a new client'''
    return create_client(db=db, client=client)


@router.get("/{client_id}", response_model=Client)
async def read_client(client_id: int, db: Session = Depends(get_db)):
    '''Get a client by client_id'''
    client = get_client(db=db, client_id=client_id)
    if client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return client


@router.get("/", response_model=List[Client])
async def read_clients(skip: int = 0, limit: int = 10, db: Session = Depends(get_db)):
    '''Retrieve clients with options to skip a number of results and limit max results shown'''
    return get_clients(db=db, skip=skip, limit=limit)


@router.put("/{client_id}", response_model=Client)
async def update_existing_client(
              client_id: int,
              client: ClientUpdate,
              db: Session = Depends(get_db)):
    '''Update a client's information by client_id'''
    db_client = update_client(db=db, client_id=client_id, client=client)
    if db_client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return {f"Client with ID {client_id} is updated successfully!"}


@router.delete("/{client_id}", response_model=Client)
async def delete_existing_client(client_id: int, db: Session = Depends(get_db)):
    '''Delete a client by client_id'''
    db_client = delete_client(db=db, client_id=client_id)
    if db_client is None:
        raise HTTPException(status_code=404, detail="Client not found")
    return {f"Client with ID {client_id} is deleted successfully!"}
