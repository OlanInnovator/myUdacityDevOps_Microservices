#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
# See `run_docker.sh`

# Step 1:
# Create  your on docker ID here
dockerpath="myapp_prod1:latest"

# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
#docker tag myapp_prod $dockerpath
docker login

# Step 3:cat 
# Push Image
docker tag $dockerpath olaninnovator/myapp_prod1
docker push olaninnovator/myapp_prod1:latest
#sudo docker image push olaninnovator/$dockerpath
