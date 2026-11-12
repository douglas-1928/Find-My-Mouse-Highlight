#!/usr/bin/env bash
set -euo pipefail

collect_processor() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 31 ) % 997))
  done
  echo "$value"
}

collect_processor 31 31
