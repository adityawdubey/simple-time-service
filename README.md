# SimpleTimeService

A minimal microservice built using FastAPI. It returns the current UTC timestamp and the client's IP address.

## Features
- FastAPI for high-performance web handling
- Dockerized with a non-root user
- Optimized using a slim Python base image
- Kubernetes deployment ready
- Health checks and resource limits configured

## Requirements
- [Docker](https://docs.docker.com/get-docker/)
- [Kubernetes](https://kubernetes.io/docs/setup/) (optional, for deployment)

## Usage

### Local Development

#### Step 1: Clone the Repository
```bash
git clone https://github.com/adityawdubey/simple-time-service.git
cd simple-time-service/
```

#### Step 2: Build the Docker Image
```bash
docker build -t time-service .
```

#### Step 3: Run the Container
```bash
docker run -d -p 8080:80 --name time-service time-service
```

#### Step 4: Test the Service
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

### Docker Hub Deployment

#### Step 1: Login to Docker Hub
```bash
docker login
```

#### Step 2: Tag your image
```bash
docker tag time-service:latest yourusername/time-service:latest
```

#### Step 3: Push to Docker Hub
```bash
docker push yourusername/time-service:latest
```

### Kubernetes Deployment

#### Step 1: Apply the Kubernetes manifests
```bash
kubectl apply -f k8s-manifests/
```

#### Step 2: Verify the deployment
```bash
kubectl get pods
kubectl get services
```

## Configuration

### Resource Limits
- Memory: 128Mi (request) / 256Mi (limit)
- CPU: 100m (request) / 200m (limit)

### Health Checks
- Liveness probe: HTTP GET on port 80
- Readiness probe: HTTP GET on port 80
- Initial delay: 5 seconds
- Period: 10 seconds

## Security
- Runs as non-root user (UID 1000)
- Resource limits to prevent resource exhaustion
- Rolling updates with zero downtime

## Notes
- The app runs as a non-root user for security
- The container image is lightweight using `python:3.12-slim`
- Kubernetes deployment includes 3 replicas with rolling updates

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
