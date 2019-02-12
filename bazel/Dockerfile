FROM cirrusci/bazel:base

ARG bazel_version

ENV BAZEL_VERSION $bazel_version

RUN wget -O install.sh https://github.com/bazelbuild/bazel/releases/download/${BAZEL_VERSION}/bazel-${BAZEL_VERSION}-installer-linux-x86_64.sh \
    && chmod +x install.sh \
    && ./install.sh --user \
    && rm -f install.sh

ENV PATH ${PATH}:${HOME}/bin

RUN bazel version
