#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<danman28/house-cost-estimator>

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: danman28/house-cost-estimator"
docker login --username=danman28 --email=danny.denver80204@gmail.com
docker tag 6ee26cd8672c danman28/house-cost-estimator:firsttry

# Step 3:
# Push image to a docker repository
docker push danman28/house-cost-estimator:firsttry
