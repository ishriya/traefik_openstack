#!/bin/bash

wget http://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-disk1.img

virt-customize -a xenial-server-cloudimg-amd64-disk1.img \
      --run-command 'echo "manage_etc_hosts: true" >> /etc/cloud/cloud.cfg' \
      --mkdir /tngbench_share \
      --upload log_intf_statistics.py:/log_intf_statistics.py \
      --upload start.sh:/start.sh \
      --upload stop.sh:/stop.sh \
      --run-command 'chmod +x start.sh' \
      --run-command 'chmod +x stop.sh' \
      --upload install.sh:/install.sh \
      --run install.sh \
      --upload traefik.toml:/etc/traefik/traefik.toml
