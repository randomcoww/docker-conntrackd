FROM debian:testing-slim

RUN set -x \
  \
  && apt-get update -y \
  && apt-get install -y \
    conntrackd \
  && apt-get autoremove \
  && apt-get clean

ENTRYPOINT ["/usr/sbin/conntrackd"]
