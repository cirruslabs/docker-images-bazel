#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker buildx create --name multibuilder
docker buildx use multibuilder
docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 --tag cirrusci/bazel:base --push base
docker buildx build --platform linux/amd64,linux/arm64 --tag cirrusci/bazel:$BAZEL_VERSION \
             --tag cirrusci/bazel:latest \
             --push \
             --build-arg bazel_version=$BAZEL_VERSION \
             bazel
