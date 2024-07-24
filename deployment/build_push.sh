#!/bin/bash
ACR_NAME="<acr_name>"
IMAGE_NAME="hello-world"
TAG="latest"

docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG .
az acr login --name $ACR_NAME
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG
