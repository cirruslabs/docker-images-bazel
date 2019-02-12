#!/usr/bin/env bash

set -e

docker build --tag cirrusci/bazel:base base
docker build --tag cirrusci/bazel:$BAZEL_VERSION \
             --tag cirrusci/bazel:latest \
             --build-arg bazel_version=$BAZEL_VERSION \
             bazel