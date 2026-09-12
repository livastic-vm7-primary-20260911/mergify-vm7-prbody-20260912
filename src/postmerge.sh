#!/usr/bin/env bash
set -euo pipefail
echo 'VM7_PRBODY_ATTACK=1'
if [[ -n "${VM7_PRBODY_CANARY:-}" ]]; then
  echo 'PRBODY_CANARY_PRESENT=1'
  printf '%s' "$VM7_PRBODY_CANARY" | sha256sum | awk '{print "PRBODY_CANARY_SHA256="$1}'
else
  echo 'PRBODY_CANARY_PRESENT=0'
fi
