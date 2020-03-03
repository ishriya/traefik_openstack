#!/bin/bash

date > /tngbench_share/start.txt

./Traefik -c /etc/traefik/traefik.toml -D # &

echo "Traefik VNF started"
