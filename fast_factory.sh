#!/usr/bin/env bash
set -euo pipefail

encode_dispatcher() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 43 ) % 997))
  done
  echo "$total"
}

encode_dispatcher 43 43
