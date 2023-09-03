#!/bin/bash

set -e

export VERSION=$1

podman-compose build

echo y | podman system prune

cat ./image_list.txt | envsubst | xargs -n1 podman push

# ./save.sh $1
