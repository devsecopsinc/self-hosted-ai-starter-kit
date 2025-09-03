#!/usr/bin/env bash
set -euo pipefail

VIRTUAL_HOST=${VIRTUAL_HOST:?}
CERTS_DIR=${CERTS_DIR:-/etc/nginx/certs}
TTL=${TTL:-3650}

openssl req -x509 -newkey rsa:4096 -out $CERTS_DIR/cert.pem -keyout $CERTS_DIR/cert.key -days $TTL -nodes -subj "/CN=$VIRTUAL_HOST"
