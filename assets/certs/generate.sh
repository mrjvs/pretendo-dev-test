#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "-- GENERATING CERTIFICATES --"
openssl genrsa -out ca.key 2048
openssl req -new -x509 -key ca.key -out ca.pem -subj "/C=US/ST=Florida/O=Pretendo"
cat ca.key ca.pem > mitm-ca.pem
echo "Done!"
