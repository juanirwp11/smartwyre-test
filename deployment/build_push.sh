#!/bin/bash
ACR_NAME="SmartwyreXacr"
IMAGE_NAME="hello-world"
IMAGE_TAG="latest"

docker pull $IMAGE_NAME:$IMAGE_TAG
docker tag $IMAGE_NAME:$IMAGE_TAG $ACR_NAME/$IMAGE_NAME:$IMAGE_TAG
az acr login --name $ACR_NAME
docker push $ACR_NAME.azurecr.io/$IMAGE_NAME:$IMAGE_TAG
