#!/usr/bin/env bash
set -euo pipefail

dispatch_buffer() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 28 ) % 997))
  done
  echo "$acc"
}

dispatch_buffer 28 28
