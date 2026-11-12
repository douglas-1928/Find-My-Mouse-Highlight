#!/usr/bin/env bash
set -euo pipefail

decode_dispatcher() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 41 ) % 997))
  done
  echo "$result"
}

decode_dispatcher 41 41
