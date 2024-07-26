#!/bin/bash
ACR_NAME="SmartwyreXacr"
IMAGE_NAME="hello-world"
IMAGE_TAG="latest"

az login
ACR_LOGIN_SERVER=$(az acr show --name $ACR_NAME --query loginServer --output tsv)

docker pull $IMAGE_NAME:$IMAGE_TAG
docker tag $IMAGE_NAME:$IMAGE_TAG $ACR_LOGIN_SERVER/$IMAGE_NAME:$IMAGE_TAG
az acr login --name $ACR_NAME
docker push $ACR_LOGIN_SERVER/$IMAGE_NAME:$IMAGE_TAG
