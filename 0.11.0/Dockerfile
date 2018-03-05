FROM cirrusci/bazel:base

ENV BAZEL_VERSION 0.11.0

RUN wget -O install.sh https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-without-jdk-installer-linux-x86_64.sh \
    && chmod +x install.sh \
    && ./install.sh --user \
    && rm -f install.sh

ENV PATH ${PATH}:${HOME}/bin

RUN bazel version
