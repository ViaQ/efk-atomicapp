#!/bin/sh

set -ex
prefix=${PREFIX:-${1:-bitscout/}}
version=${VERSION:-${2:-latest}}
docker build -t "${prefix}efk-atomicapp:${version}" .

if [ -n "${PUSH:-$3}" ]; then
	docker push "${prefix}efk-atomicapp:${version}"
fi
