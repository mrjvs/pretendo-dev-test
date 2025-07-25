#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "-- CLONING INKAY REPO --"
rm -rf ./repo
git clone https://github.com/PretendoNetwork/Inkay.git ./repo
cd ./repo
git checkout main

echo 
echo "-- PREPARING CERTIFICATES --"
cp ../../../assets/certs/ca.pem ./data/ca.pem
echo "Using /assets/certs/ca.pem"

echo 
echo "-- COMPILING --"
docker build -t inkay-build .
docker run -u $UID --rm -v $(pwd):/app inkay-build

echo 
echo "-- MOVING OUTPUT --"
cp ./dist/Inkay-pretendo.wps ../inkay-dev.wps
echo "Moving output to /patches/inkay"
