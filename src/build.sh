#!/usr/bin/env bash

packages="hello"
for p in $packages; do
  pushd $p
    makepkg
  popd
done
