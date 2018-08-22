#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push cirrusci/bazel:base
docker push cirrusci/bazel:0.16.1
docker push cirrusci/bazel:latest