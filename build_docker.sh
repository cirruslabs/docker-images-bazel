#!/usr/bin/env bash

set -e

docker build --tag cirrusci/bazel:base bazel/base
docker build --tag cirrusci/bazel:0.11.0 bazel/0.11.0