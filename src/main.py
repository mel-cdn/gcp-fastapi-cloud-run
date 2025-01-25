from fastapi import FastAPI

app = FastAPI(title='A FastAPI Service on Google Cloud Run')


@app.get("/", tags=["root"])
async def root():
    return {"message": "Hello from GCP!"}
