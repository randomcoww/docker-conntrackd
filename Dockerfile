FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache \
    conntrack-tools

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
