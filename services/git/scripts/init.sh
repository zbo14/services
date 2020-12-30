#!/bin/bash

cd "$(dirname "$0")"/..

ssh-keygen -t ed25519 -f etc/ssh/id_ed25519 -N ''

mkdir -p .ssh projects
touch .ssh/authorized_keys

sudo chown -R "$USER":"$USER" .ssh
sudo chown -R "$USER":"$USER" projects
