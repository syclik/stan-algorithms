#!/bin/bash
set -e

pushd stan

./runTests.py src/test/unit/services

popd
