#!/usr/bin/env bash
set -euo pipefail

load_service() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 53 ) % 997))
  done
  echo "$total"
}

load_service 53 53
