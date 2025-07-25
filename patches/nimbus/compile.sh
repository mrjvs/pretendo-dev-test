#!/bin/bash

set -e
cd "$(dirname "$0")"

echo "-- DOWNLOADING NIMBUS --"
rm -rdf ./tmp
mkdir -p ./tmp
cd ./tmp
wget -O nimbus.zip https://github.com/PretendoNetwork/nimbus/releases/download/v1.6.1/combined.1.6.1.zip
unzip nimbus -d nimbus

echo 
echo "-- PREPARING CERTIFICATES --"
cp ../../../assets/certs/ca.pem ./nimbus/3ds/juxt-prod.pem
echo "Using /assets/certs/ca.pem"

echo 
echo "-- MOVING OUTPUT --"
rm -rdf ../out
mkdir -p ../out
cp -r ./nimbus/* ../out
echo "Moving output to /patches/nimbus/out"
