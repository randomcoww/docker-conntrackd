FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache \
    conntrack-tools

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
