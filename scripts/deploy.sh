#!/bin/bash
set -e

APP_NAME="cicd-app"
IMAGE_NAME="$1"

if [ -z "$IMAGE_NAME" ]; then
  echo "Usage: ./deploy.sh <image_name>"
  exit 1
fi

echo "Pulling latest image: $IMAGE_NAME"
docker pull "$IMAGE_NAME"

echo "Stopping old container if it exists"
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "Starting new container"
docker run -d \
  --name $APP_NAME \
  -p 5000:5000 \
  -e APP_VERSION="$IMAGE_NAME" \
  "$IMAGE_NAME"

echo "Waiting for app to start"
sleep 5

echo "Checking health endpoint"
curl -f http://localhost:5000/health

echo "Deployment successful"