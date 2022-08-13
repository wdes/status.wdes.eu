#!/bin/sh -eux

envsubst < vigil.cfg > vigil.cfg

cat vigil.cfg

vigil -c /etc/vigil.cfg