#!/bin/sh
set -eu

target="${UPSTREAM_HOST}:${UPSTREAM_PORT}"
log_args="--log=stdout --log-format=json"

if [ -n "${NGROK_URL:-}" ]; then
  exec ngrok http ${log_args} --url="${NGROK_URL}" "${target}"
fi

exec ngrok http ${log_args} "${target}"
