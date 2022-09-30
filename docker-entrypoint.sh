#!/bin/sh -eux

echo "Env names defined"
printenv | cut -d '=' -f 1

echo "Replacing ENVs"
envsubst < /etc/vigil.cfg > /etc/vigil.cfg

echo "Running vigil"
cat /etc/vigil.cfg
vigil -c /etc/vigil.cfg