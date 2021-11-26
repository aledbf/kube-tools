FROM ubuntu:21.10

COPY src/install-packages /usr/bin/

ARG DEBIAN_FRONTEND=noninteractive

RUN install-packages \
    curl \
    ca-certificates

COPY LICENSE README.md /
COPY src/ /
RUN /install.sh

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENTRYPOINT ["/entrypoint.sh"]
