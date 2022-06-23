#!/bin/bash

export VERSION=22.04

podman-compose build

echo y | podman system prune

cat ./image_list.txt | xargs -n1 podman push
