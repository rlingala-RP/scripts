#!/bin/bash
# This script will build simple go webapi project and deploy the image to nexus
#checkout the code
git clone git@github.com:rlingala-RP/Gowebapi.git

cd Gowebapi

#build docker image
docker build -t localhost:8085/gowebapi .

#docker scan the image
docker scan localhost:8085/gowebapi

#push docker image to nexus
docker push localhost:8085/gowebapi