#!/bin/bash
mc alias set local http://${MINIO_DOMAIN}:9000 ${MINIO_ROOT_USER} ${MINIO_ROOT_PASSWORD}

# Miiverse buckets
mc mb --ignore-existing local/miiverse-local
mc anonymous set download local/miiverse-local
mc anonymous set public local/miiverse-local
