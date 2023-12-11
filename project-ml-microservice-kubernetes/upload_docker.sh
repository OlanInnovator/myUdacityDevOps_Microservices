#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
# See `run_docker.sh`

# Step 1:
# Create  your on docker ID here
dockerpath="olaninnovator/myapp_prod:latest"

# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker tag myapp_prodsu $dockerpath
docker login

# Step 3:cat 
# Push Image
docker image push $dockerpath
