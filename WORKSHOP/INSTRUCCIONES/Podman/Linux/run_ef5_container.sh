#!/usr/bin/env bash
set -euo pipefail
# init
function pause(){
   read -p "$*"
}

ENGINE="docker"
if command -v podman >/dev/null 2>&1; then
  ENGINE="podman"
fi

$ENGINE run -it \
  -v "$(pwd)/data:/data:rw" \
  -v "$(pwd)/conf:/conf:ro" \
  -v "$(pwd)/results:/results:rw" \
  -u "$(id -u)":"$(id -g)" \
  ef5-container
pause 'Press any key to continue...'
