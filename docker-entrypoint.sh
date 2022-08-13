#!/bin/sh -eux

envsubst < /etc/vigil.cfg > /etc/vigil.cfg

cat /etc/vigil.cfg

vigil -c /etc/vigil.cfg