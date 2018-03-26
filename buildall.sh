#!/bin/bash
#
PROJECTS="geoweb-backend geoweb-frontend-nginx adaguc-server adaguc-viewer"

for PROJ in $PROJECTS ; do
  DIR=${PROJ}-docker
  echo "Building Geoweb docker image for $DIR"
  (
    cd $DIR
    bash build.sh
  )
  echo
done
