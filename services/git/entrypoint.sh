#!/bin/bash -e

mkdir -p /run/sshd
/usr/sbin/sshd -4De -h /etc/ssh/id_ed25519
