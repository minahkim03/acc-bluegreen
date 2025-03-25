from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "root api"}

@app.get("/acc")
def read_root():
    return {"message": "acc api"}
