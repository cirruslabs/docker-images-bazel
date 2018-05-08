#!/usr/bin/env bash

set -e

docker build --tag cirrusci/bazel:base base
docker build --tag cirrusci/bazel:0.13.0 --tag cirrusci/bazel:latest 0.13.0