#!/usr/bin/env bash

set -e

docker build --tag cirrusci/bazel:base base
docker build --tag cirrusci/bazel:0.11.0 0.11.0