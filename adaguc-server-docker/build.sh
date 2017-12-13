#!/bin/sh
echo "Building build adaguc-server"

docker build --no-cache -t adaguc-server .
docker save -o adaguc-server.dockerimage adaguc-server
