FROM ubuntu:21.10

SHELL ["/bin/bash", "-c"]

COPY src/install-packages /usr/bin/

ARG DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize \
    && install-packages \
    curl \
    ca-certificates

COPY LICENSE README.md /
COPY src/ /
RUN /install.sh

ENTRYPOINT ["/entrypoint.sh"]
