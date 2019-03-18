FROM debian:testing-slim

RUN set -x \
  \
  && apt-get update -y \
  && apt-get install -y \
    conntrackd \
  && apt-get autoremove \
  && apt-get clean

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
