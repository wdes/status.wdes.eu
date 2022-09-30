#!/bin/sh -eux

ls -lah /etc/vigil.cfg
cat /etc/vigil.cfg

echo "Env names defined"
printenv | cut -d '=' -f 1

echo "Replacing ENVs"
envsubst < /etc/vigil.cfg > /etc/vigil.cfg

echo "Running vigil"
ls -lah /etc/vigil.cfg
cat /etc/vigil.cfg
vigil -c /etc/vigil.cfg