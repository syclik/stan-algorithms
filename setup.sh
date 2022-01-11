#!/bin/bash
set -e

## 1. Update submodules

git submodule update --init --recursive


## 2. Download appropriate stanc3 v2.18.1
mkdir -p stan/bin

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS_TAG=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS_TAG=mac
else
    echo "Not downloading stan/bin/stanc for OS type: $OSTYPE"
    error 1
fi

echo "Downloading stanc3 version: v2.18.1"

curl -L "https://github.com/stan-dev/stanc3/releases/download/v2.28.1/${OS_TAG}-stanc" -o stan/bin/stanc --retry 5 --retry-delay 10

chmod +x stan/bin/stanc
