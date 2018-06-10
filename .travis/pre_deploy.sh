#!/bin/bash

set -ev

mkdir -p .travis/build

zip -qry .travis/build/package . -i@.travis/package.include.list -x@.travis/package.exclude.list