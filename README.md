# SimpleTimeService

A minimal microservice built using FastAPI. It returns the current UTC timestamp and the client's IP address.

## Features
- FastAPI for high-performance web handling
- Dockerized with a non-root user
- Optimized using a slim Python base image

## Requirements
- [Docker](https://docs.docker.com/get-docker/)

## Usage

### Step 1: Clone the Repository
```bash
git clone https://github.com/adityawdubey/simple-time-service.git
cd cd simple-time-service/
```

### Step 2: Build the Docker Image
```bash
docker build -t simple-time-service .
```

### Step 3: Run the Container
```bash
docker run -p 8080:80 simple-time-service
```

### Step 4: Test the Service
Open your browser or run:
```bash
curl http://localhost:8080/
```

Expected response:
```json
{
  "timestamp": "2025-04-17T14:45:00Z",
  "ip": "127.0.0.1"
}
```

## Notes
- The app runs as a non-root user for security.
- The container image is lightweight using `python:3.12-slim`.

## DockerHub
TODO
