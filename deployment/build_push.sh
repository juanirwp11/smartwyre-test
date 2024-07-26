#!/bin/bash
ACR_NAME="SmartwyreXacr"
IMAGE_NAME="hello-world"
IMAGE_TAG="latest"

az login \
--service-principal \
-t "3abc5e4e-1080-4991-a58f-815a337e150b" \
-u "ad73cf00-da95-4fd4-8183-f00a635c1a30" \
-p "smF8Q~fUDf6BakdVqlsKvMgY_bY1HBAxI5qq3bQo"
ACR_LOGIN_SERVER=$(az acr show --name $ACR_NAME --query loginServer --output tsv)

docker pull $IMAGE_NAME:$IMAGE_TAG
docker tag $IMAGE_NAME:$IMAGE_TAG $ACR_LOGIN_SERVER/$IMAGE_NAME:$IMAGE_TAG
az acr login --name $ACR_NAME
docker push $ACR_LOGIN_SERVER/$IMAGE_NAME:$IMAGE_TAG
