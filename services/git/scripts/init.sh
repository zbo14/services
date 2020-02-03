#!/bin/bash -e

cd "$(dirname "$0")"/..

ssh-keygen -t ed25519 -f etc/ssh/id_ed25519 -N ''

mkdir -p .ssh projects
sudo chown -R "$USER": .ssh
sudo chown -R "$USER": projects
