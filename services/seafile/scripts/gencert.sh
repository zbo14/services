#!/bin/bash

if [ -z "$1" ]; then
  echo "Please private private IP address"
  exit 1
fi

cd "$(dirname "$0")"/../etc/haproxy

mkdir -p private
cd private

openssl req \
  -days 3650 \
  -keyout key.pem \
  -newkey rsa:3072 \
  -nodes \
  -out cert.pem \
  -sha256 \
  -subj "/CN=$1/" \
  -x509

echo "Combining credentials for HAProxy"
cat key.pem >> cert.pem

echo "Removing private key"
rm key.pem
