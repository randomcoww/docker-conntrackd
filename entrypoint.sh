#!/bin/sh
echo -en "$CONFIG" > /etc/conntrackd/conntrackd.conf

exec /usr/sbin/conntrackd \
  -C /etc/conntrackd/conntrackd.conf
