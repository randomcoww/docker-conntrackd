#!/bin/sh

if [ -n "$CONNTRACKD_LOCAL_CONFIG" ]; then
  echo -en "$CONNTRACKD_LOCAL_CONFIG" > /etc/conntrackd/conntrackd.con
fi

exec /usr/sbin/conntrackd \
  -C /etc/conntrackd/conntrackd.conf
