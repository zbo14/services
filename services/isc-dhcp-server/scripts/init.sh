#!/bin/bash -e

sudo ip a flush dev eno1
sudo ip a add 192.168.1.2/24 dev eno1

sudo ip r del default
sudo ip r add default via 192.168.1.1
