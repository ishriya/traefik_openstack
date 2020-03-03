#!/bin/bash
apt-get update;
echo "apt update"
sleep 1
apt-get install -y git gcc make net-tools iproute2 inetutils-ping iptables python python-yaml python3 python3-pip;
sleep 1
echo "package installed"
git clone https://github.com/containous/Traefik/releases/download/v1.6.0/Traefik
sleep 1
echo "git cloned"
cd Traefik;
sleep 1
echo "cd Traefik"
make -f Makefile.Linux
sleep 1
echo "make complete"
make -f Makefile.Linux install
echo "Traefik installed"
