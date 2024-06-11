from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from motor.motor_asyncio import AsyncIOMotorClient
from neo4j import GraphDatabase
import asyncio

# Configuración de la base de datos MongoDB
MONGO_DETAILS = "mongodb://localhost:27017"
client = AsyncIOMotorClient(MONGO_DETAILS)
database = client.mydatabase
collection = database.items

# Configuración de la base de datos Neo4j
NEO4J_DETAILS = "bolt://localhost:7687"
NEO4J_USER = "neo4j"
NEO4J_PASSWORD = "password"
driver = GraphDatabase.driver(NEO4J_DETAILS, auth=(NEO4J_USER, NEO4J_PASSWORD))

# Definir la aplicación FastAPI
app = FastAPI()

# Modelos de Pydantic para validación de datos
class Item(BaseModel):
    name: str
    description: str = None
    price: float
    tax: float = None

# Rutas para la base de datos MongoDB
@app.post("/mongo/items/")
async def create_item_mongo(item: Item):
    item_dict = item.dict()
    result = await collection.insert_one(item_dict)
    if result.inserted_id:
        item_dict["_id"] = str(result.inserted_id)
        return item_dict
    raise HTTPException(status_code=500, detail="Item not created")

@app.get("/mongo/items/{item_id}")
async def read_item_mongo(item_id: str):
    item = await collection.find_one({"_id": item_id})
    if item:
        item["_id"] = str(item["_id"])
        return item
    raise HTTPException(status_code=404, detail="Item not found")

# Rutas para la base de datos Neo4j
@app.post("/neo4j/items/")
async def create_item_neo4j(item: Item):
    item_dict = item.dict()
    query = (
        "CREATE (i:Item {name: $name, description: $description, price: $price, tax: $tax}) "
        "RETURN id(i) as id"
    )
    with driver.session() as session:
        result = session.run(query, item_dict)
        record = result.single()
        if record:
            item_dict["id"] = record["id"]
            return item_dict
    raise HTTPException(status_code=500, detail="Item not created")

@app.get("/neo4j/items/{item_id}")
async def read_item_neo4j(item_id: int):
    query = "MATCH (i:Item) WHERE id(i) = $id RETURN i"
    with driver.session() as session:
        result = session.run(query, id=item_id)
        record = result.single()
        if record:
            item = record["i"]
            return dict(item)
    raise HTTPException(status_code=404, detail="Item not found")

# Cerrar conexiones de base de datos al apagar la aplicación
@app.on_event("shutdown")
async def shutdown_event():
    client.close()
    driver.close()
