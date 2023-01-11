#!/bin/bash

export VERSION=$1

echo Saving images.....

docker save -o images.tar $(cat ./image_list.txt | envsubst)
