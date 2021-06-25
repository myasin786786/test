#!/bin/bash

name=$MyjavaSpringContainer

matchingStarted=$(docker ps --filter="name=$name" -q | xargs)
[[ -n $matchingStarted ]] && docker stop $matchingStarted

matching=$(docker ps -a --filter="name=$name" -q | xargs)
[[ -n $matching ]] && docker rm $matching


