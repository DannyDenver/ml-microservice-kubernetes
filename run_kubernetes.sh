#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="danman28/house-cost-estimator:firsttry"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run house-cost-estimator --image=$dockerpath
#kubectl run house-cost-estimator --image=danman28/house-cost-estimator:firsttry --port=80
kubectl run house-cost-estimator-demo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=house-cost-estimator-demo

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward house-cost-estimator-demo 8080:80

