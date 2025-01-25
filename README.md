# FastAPI on GCP Cloud Run

Little project to explore a FastAPI deployment on Google Cloud Project.

On this project, we will deploy a dockerized FastAPI application to Cloud Run.

## Requirements
1. Install [Python](https://www.python.org/)
2. [Docker](https://www.docker.com/)
3. [Google Cloud Project](https://cloud.google.com/) account
4. Install [Google Cloud CLI](https://cloud.google.com/sdk/docs/install)

## Setup project

```bash
# Clone project
$ git clone https://github.com/mel-cdn/gcp-fastapi-cloud-run
$ cd gcp-fastapi-cloud-run

# Build the FastAPI docker image (completion time may vary depending on your internet speed)
$ docker build -t fastapi-docker .

# Run the container
$ docker run -p 8000:80 fastapi-docker
INFO:     Started server process [1]
INFO:     Waiting for application startup.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:80 (Press CTRL+C to quit)

# Open a new terminal and test if the FastAPI app works!
$ curl http://localhost:8000
{"message":"Hello from GCP!"}
```