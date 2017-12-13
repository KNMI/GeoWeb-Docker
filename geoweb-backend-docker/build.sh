#!/bin/sh
echo "Building build geoweb-backend"

docker build -t geoweb-backend .
docker save -o geoweb-backend.dockerimage geoweb-backend
