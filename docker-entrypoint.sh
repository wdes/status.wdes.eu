#!/bin/sh -eux

ls -lah /etc/vigil.cfg
cat /etc/vigil.cfg

echo "Env names defined"
printenv | cut -d '=' -f 1

echo "Replacing ENVs"
envsubst < /etc/vigil.cfg
envsubst < /etc/vigil.cfg > /tmp/vigil.cfg

echo "Running vigil"
ls -lah /tmp/vigil.cfg
cat /tmp/vigil.cfg
vigil -c /tmp/vigil.cfg