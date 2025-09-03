#!/usr/bin/env bash
set -euo pipefail

docker compose --profile gpu-nvidia up -d
