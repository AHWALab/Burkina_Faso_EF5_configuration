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

BUILD_ARG=""
if [ -n "${DOCKER_BASE_OS:-}" ]; then
  BUILD_ARG="--build-arg DOCKER_BASE_OS=${DOCKER_BASE_OS}"
fi

$ENGINE build --no-cache $BUILD_ARG -t ef5-container .
pause 'Press any key to continue...'
