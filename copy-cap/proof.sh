#!/bin/sh
set -eu
mode=$(tr -d "\r\n" < copy-cap/mode.txt)
if [ "$mode" = OPEN ]; then
  sh copy-cap/payload.sh
else
  echo BB_COPY_CAP_SOURCE_SAFE_LOCKED
fi
