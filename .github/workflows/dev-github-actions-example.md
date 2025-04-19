# GitHub Secrets and Variables (dev Environment)

This project’s CI/CD pipeline relies on the following GitHub Actions secrets:

dev Variables:
- AWS_REGION
- REGISTRY
- IMAGE_NAME
- NAMESPACE
- EKS_CLUSTER_NAME

dev Secrets:
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- DOCKERHUB_USERNAME
- DOCKERHUB_TOKEN

## How to Add Them

1. Go to your GitHub repo.
2. Click on **Settings > Environments > New environment called "dev" 
3. Add each Environment secrets and variables using the exact names from the table above.