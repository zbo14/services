#!/bin/bash

cd "$(dirname "$0")"/..

mkdir -p secrets
cd secrets

read -rp "Admin user: "
echo "${REPLY:-admin}" > admin_user.txt

read -rp "Admin password: "

if [ -z "$REPLY" ]; then
  REPLY="$(bash ../scripts/randpass.sh 24)"
fi

echo "$REPLY" > admin_password.txt

read -rp "Postgres database: "
echo "${REPLY:-nextcloud}" > postgres_db.txt

read -rp "Postgres password: "

if [ -z "$REPLY" ]; then
  REPLY="$(bash ../scripts/randpass.sh 24)"
fi

echo "$REPLY" > postgres_password.txt

read -rp "Postgres user: "
echo "${REPLY:-nextcloud}" > postgres_user.txt

cd ..
bash scripts/gencert.sh
