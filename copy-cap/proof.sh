#!/bin/sh
set -eu
mode=$(tr -d "\\r\\n" < copy-cap/mode.txt)
if [ "$mode" = OPEN ]; then
  echo BB_COPY_CAP_CODE_EXECUTION
  if [ -n "${MERGIFY_PATH_PROOF:-}" ]; then
    echo BB_COPY_CAP_SECRET_PRESENT
  fi
else
  echo BB_COPY_CAP_SOURCE_SAFE_LOCKED
fi
