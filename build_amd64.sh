#!/bin/sh

VERSION=3.7.2
ARCH=amd64
IMAGE=mikenye/piaware

docker build -f Dockerfile -t ${IMAGE}:${VERSION}-${ARCH} .
