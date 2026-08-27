#!/bin/sh
set -eu

expected='1a07c66c286e8dde5270bd6e709ffd80f622218c765f250df6372b0a27af4513'
actual=$(printf '%s' "${MERGIFY_PATH_PROOF:-}" | sha256sum | cut -d' ' -f1)

if [ "$actual" = "$expected" ]; then
  echo 'FLAG{mergify-file-cap-critical-path-20260827}'
else
  echo 'protected secret was not available' >&2
  exit 1
fi
