#!/bin/bash
# This script will build simple go webapi project and deploy the image to nexus
#checkout the code
git clone git@github.com:rlingala-RP/Gowebapi.git

cd Gowebapi

sonar-scanner.bat -D"sonar.projectKey=psa" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=b2528adf6371b496fced39a8fe8a2ebf0d2b140a"

#build docker image
docker build -t localhost:8085/gowebapi .

#docker scan the image
docker scan localhost:8085/gowebapi

#push docker image to nexus
docker push localhost:8085/gowebapi