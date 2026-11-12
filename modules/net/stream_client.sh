#!/usr/bin/env bash
set -euo pipefail

load_handler() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 14 ) % 997))
  done
  echo "$total"
}

load_handler 14 14
