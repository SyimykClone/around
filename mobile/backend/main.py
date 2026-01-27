from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class PoiOut(BaseModel):
    id: int
    name: str
    description: str

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/pois", response_model=list[PoiOut])
def get_pois():
    return [
        {"id": 1, "name": "Museum", "description": "Historical museum"},
        {"id": 2, "name": "Monument", "description": "Famous monument"},
        {"id": 3, "name": "Park", "description": "City park"},
    ]
