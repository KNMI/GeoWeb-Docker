#!/bin/bash
#
PROJECTS="geoweb-backend"

for PROJ in $PROJECTS ; do
  DIR=${PROJ}-docker
  echo "Building Geoweb docker image for $DIR"
  (
    cd $DIR
    bash build.sh
  )
  echo
done
