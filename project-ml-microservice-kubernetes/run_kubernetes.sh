#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="olaninnovator/myapp_prod:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-mykubemetes --image=$dockerpath
echo $dockerpath

## See the status
kubectl get deploy,rs,svc,pods

# Step 3:
# List kubernetes pods
kubectl get nodes

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/aws-node-6l4pg --address 0.0.0.0 80:80 