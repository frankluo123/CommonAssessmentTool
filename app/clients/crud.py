from sqlalchemy.orm import Session
from .models import Client
from .schema import ClientCreate, ClientUpdate

 # Creates a new client record in the database
def create_client(db: Session, client: ClientCreate):
    db_client = Client(**client.dict())
    db.add(db_client)
    db.commit()
    db.refresh(db_client)
    return db_client

# Retrieves a client record by client_id
def get_client(db: Session, client_id: int):
    return db.query(Client).filter(Client.id == client_id).first()

# Retrieves a list of client records with optional pagination
def get_clients(db: Session, skip: int = 0, limit: int = 10):
    return db.query(Client).offset(skip).limit(limit).all()

# Updates an existing client record with only the fields provided in client
def update_client(db: Session, client_id: int, client: ClientUpdate):
    db_client = db.query(Client).filter(Client.id == client_id).first()
    if db_client:
        for key, value in client.dict(exclude_unset=True).items():
            setattr(db_client, key, value)
        db.commit()
        db.refresh(db_client)
    return db_client

# Deletes a client record by client_id
def delete_client(db: Session, client_id: int):
    db_client = db.query(Client).filter(Client.id == client_id).first()
    if db_client:
        db.delete(db_client)
        db.commit()
    return db_client
