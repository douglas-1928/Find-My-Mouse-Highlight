#!/usr/bin/env bash
set -euo pipefail

build_service() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 23 ) % 997))
  done
  echo "$result"
}

build_service 23 23
