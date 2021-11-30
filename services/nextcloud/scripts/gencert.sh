#!/bin/bash

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
  -subj "/CN=${1:-localhost}/" \
  -x509

echo "Combining credentials for HAProxy"
cat key.pem >> cert.pem

echo "Removing private key"
rm key.pem
