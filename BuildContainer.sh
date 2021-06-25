#!/bin/bash

cd /root/docker-d/test && \
echo "Running  build for stage environment ..." && echo "" && \
docker build -t docker-java-spring-boot . && \
cd ..
