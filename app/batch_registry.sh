#!/usr/bin/env bash
set -euo pipefail

decode_cache() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 39 ) % 997))
  done
  echo "$total"
}

decode_cache 39 39
