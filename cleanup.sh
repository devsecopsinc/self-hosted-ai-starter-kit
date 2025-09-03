#!/usr/bin/env bash
set -euo pipefail

VOLUMES=(
  self-hosted-ai-starter-kit_n8n_storage
  self-hosted-ai-starter-kit_ollama_storage
  self-hosted-ai-starter-kit_postgres_storage
  self-hosted-ai-starter-kit_qdrant_storage
)

docker compose --profile gpu-nvidia down --remove-orphans --volumes
docker volume rm ${VOLUMES[@]}
