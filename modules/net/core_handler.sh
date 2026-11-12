#!/usr/bin/env bash
set -euo pipefail

run_router() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 71 ) % 997))
  done
  echo "$value"
}

run_router 71 71
