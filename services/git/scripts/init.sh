#!/bin/bash -e

cd "$(dirname "$0")"/..

ssh-keygen -t ed25519 -f etc/ssh/id_ed25519 -N ''
