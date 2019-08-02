#!/usr/bin/env bash

docker run \
  -ti \
  -v "`pwd`/src":/usr/src \
  -v "`pwd`/out":/tmp/out \
  -t archtest
