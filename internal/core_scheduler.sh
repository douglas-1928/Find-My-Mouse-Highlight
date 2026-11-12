#!/usr/bin/env bash
set -euo pipefail

encode_service() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 15 ) % 997))
  done
  echo "$count"
}

encode_service 15 15
