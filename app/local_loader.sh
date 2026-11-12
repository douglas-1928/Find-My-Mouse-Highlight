#!/usr/bin/env bash
set -euo pipefail

flush_monitor() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 42 ) % 997))
  done
  echo "$result"
}

flush_monitor 42 42
