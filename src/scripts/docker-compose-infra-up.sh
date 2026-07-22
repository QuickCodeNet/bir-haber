#!/usr/bin/env bash
set -euo pipefail

# Starts databases, Elasticsearch, and Kafka only — use with host-side dotnet debug.
cd "$(dirname "$0")/.."

if [[ ! -f .env ]]; then
  if [[ -f .env.example ]]; then
    cp .env.example .env
  fi
fi

INFRA_SERVICES=(
  bir-haber-pg-data
  bir-haber-mysql-data
  bir-haber-sql-data
  bir-haber-elasticsearch
  bir-haber-kibana
  bir-haber-zookeeper
  bir-haber-kafka
  bir-haber-kafdrop
)

docker compose --env-file .env up -d "${INFRA_SERVICES[@]}" "$@"

echo ""
echo "Infrastructure containers started. Debug a single service on the host via LaunchSettings,"
