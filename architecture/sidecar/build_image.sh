#!/bin/bash

. ./set_env.sh

docker-compose build
docker tag filewatcher:latest mengxuzhao/filewatcher:latest
docker tag apache:latest mengxuzhao/apache:latest

docker push mengxuzhao/filewatcher:latest
docker push mengxuzhao/apache:latest
