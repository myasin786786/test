#!/bin/bash

name=$MyjavaSpringContainer 

matchingStarted=$(docker ps --filter="name=$name" -q | xargs)
[[ -n $matchingStarted ]] && docker stop $matchingStarted

matching=$(docker ps -a --filter="name=$name" -q | xargs)
[[ -n $matching ]] && docker rm $matching


cd /root/docker-d/test && \
echo "Running  build for stage environment ..." && echo "" && \
docker build -t docker-java-spring-boot . && \
echo "Run successfull " && echo "" && \
docker run -d -p 8085:8080 --name MyjavaSpringContainer docker-java-spring-boot && \
echo "Run Successfull ..." && echo "" && \
cd ..

