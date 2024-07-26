#!/bin/bash
ACR_NAME="Smartwyre-acr"
IMAGE_NAME="hello-world"
TAG="latest"

docker build -t $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG .
az acr login --name $ACR_NAME
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$TAG
