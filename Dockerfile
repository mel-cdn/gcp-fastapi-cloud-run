FROM python:3.9-slim

## Setup working directory inside Docker
WORKDIR app

## Setup project environment
# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy project files
COPY src/ src/

## Run application
# Expose app's port
EXPOSE 8080
# Run the FastAPI application using uvicorn server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]