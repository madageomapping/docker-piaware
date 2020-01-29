#!/bin/sh

VERSION=3.7.2
ARCH=`uname -m`
IMAGE=mikenye/piaware

# Check if target dockerfile exists
if [ -f "Dockerfile.${ARCH}" ]; then
    echo Building from Dockerfile.${ARCH}
    docker build -f Dockerfile.${ARCH} -t ${IMAGE}:${VERSION}-${ARCH} .
else
    echo Target file Dockerfile.${ARCH} does not exist!
fi

