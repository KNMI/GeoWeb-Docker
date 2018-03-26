#!/bin/sh
echo "Building build env"

docker build -t nodebuild . -f Dockerfile.nodebuild
#
docker create --name extract nodebuild
docker cp extract:/frontend/geoweb-frontend/dist dist
docker rm -f extract

echo Building nginx runner
docker build  -t geoweb-frontend-nginx . -f Dockerfile.geoweb-frontend-nginx
rm -r dist
#docker save -o geoweb-frontend-nginx.dockerimage geoweb-frontend-nginx
