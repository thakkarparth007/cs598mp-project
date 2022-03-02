#!/bin/bash

set -e

cd ./docker
docker-compose build 2>&1 > /dev/null
docker-compose run --user $UID:$GID 598mp python -u /598mp/src/invar_synth/main.py "$@"
