FROM openjdk:11-jdk

ARG TARGETARCH
ARG bazel_version

ENV USE_BAZEL_VERSION $bazel_version

RUN apt-get update \
    && apt-get install -y sudo curl wget git --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN wget -O /bin/bazel "https://github.com/bazelbuild/bazelisk/releases/latest/download/bazelisk-linux-$TARGETARCH" \
    && chmod +x /bin/bazel

RUN bazel version
