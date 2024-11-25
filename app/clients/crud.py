"""Module providing CRUD functions."""

from sqlalchemy.orm import Session
from .models import Client
from .schema import ClientCreate, ClientUpdate


def create_client(db: Session, client: ClientCreate):
    '''Creates a new client record in the database'''
    db_client = Client(**client.dict())
    db.add(db_client)
    db.commit()
    db.refresh(db_client)
    return db_client


def get_client(db: Session, client_id: int):
    '''Retrieves a client record by client_id'''
    return db.query(Client).filter(Client.id == client_id).first()


def get_clients(db: Session, skip: int = 0, limit: int = 10):
    '''Retrieves a list of client records with custom formatting.

    Args:
        skip (int): Number of client records to skip from start of list
        limit (int): Maximum number of client records to return
    '''
    return db.query(Client).offset(skip).limit(limit).all()


def update_client(db: Session, client_id: int, client: ClientUpdate):
    '''Updates an existing client record with only the fields provided in client'''
    db_client = db.query(Client).filter(Client.id == client_id).first()
    if not db_client:
        # Raise an error if the client is not found
        raise ValueError(f"Client with ID {client_id} not found.")
    # Update the client with the provided data
    for key, value in client.dict(exclude_unset=True).items():
        setattr(db_client, key, value)
    db.commit()
    db.refresh(db_client)
    return db_client

def delete_client(db: Session, client_id: int):
    '''Deletes a client record by client_id'''
    db_client = db.query(Client).filter(Client.id == client_id).first()
    if db_client:
        db.delete(db_client)
        db.commit()
    return db_client
