#!/bin/bash
docker build -t hermann85/custom_mysql:latest .
docker login -u $DOCKER_LOGIN -p $DOCKER_PASSWORD docker.io
docker push hermann85/custom_mysql:latest