#!/bin/bash

docker run -it --rm --init -u $(id -u 1000):$(id -g 1000) -v $(pwd)/overlay/home/node/:/home/node/ -v $(pwd)/projects/:/projects/ -w /projects/$1 teamlinux01/angular:latest ng build "$@"
