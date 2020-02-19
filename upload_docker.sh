#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=spiralmemory/udacity-project-4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="spiralmemory"
docker login
docker tag udacity-project-4 $DOCKER_ID_USER/udacity-project-4
docker push $DOCKER_ID_USER/udacity-project-4

# Step 3:
# Push image to a docker repository
docker push spiralmemory/udacity-project-4
