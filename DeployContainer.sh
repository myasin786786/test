#!/bin/bash

cd /root/docker-d/test && \
echo "Deploy Container successfull " && echo "" && \
docker run -d -p 8085:8080 --name MyjavaSpringContainer docker-java-spring-boot && \
echo "Run Successfull ..." && echo "" && \
cd ..

