#!/bin/bash

cat /dev/urandom | LC_ALL=C tr -dc 'A-Za-z0-9!@#$%^&*' | head -c 24