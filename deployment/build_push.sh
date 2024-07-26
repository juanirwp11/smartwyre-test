#!/bin/bash
ACR_NAME="SmartwyreXacr"
IMAGE_NAME="hello-world"
TAG="latest"

docker build -t $IMAGE_NAME:$IMAGE_TAG .
az acr login --name $ACR_NAME
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG
