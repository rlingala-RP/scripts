#!/bin/bash
# This script will build simple go webapi project and deploy the image to nexus
#checkout the code
git clone git@github.com:rlingala-RP/Gowebapi.git

cd Gowebapi

# submit sonar analysis
sonar-scanner.bat -D"sonar.projectKey=psa" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=7b1c6e5efcc7af2f8a741a82e67e045094abe87f"

#build docker image
docker build -t localhost:8085/gowebapi .


#push docker image to nexus
docker push localhost:8085/gowebapi
