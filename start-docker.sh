#!/bin/bash

cd ./docker
docker-compose build
docker-compose run --rm --user $UID:$GID 598mp bash