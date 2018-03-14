#!/usr/bin/env sh

echo "Trying to build the project"
set -x
npm install
npm start &
set +x
