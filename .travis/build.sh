#!/bin/bash

set -ev

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

./configure --with-pam-mods-dir=${TRAVIS_BUILD_DIR}/build
make
make install-exec-am