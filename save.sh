#!/bin/bash

export VERSION=$1

echo Saving images.....

podman save -m -o images.tar $(cat ./image_list.txt | envsubst)
