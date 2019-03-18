#!/bin/bash

if [ -n "$CONNTRACKD_LOCAL_CONFIG" ]; then
  echo -en "$CONNTRACKD_LOCAL_CONFIG" > /etc/conntrackd/conntrackd.conf
fi

exec conntrackd \
  -C /etc/conntrackd/conntrackd.conf
