#!/usr/bin/env sh

echo "Trying to build the project"
set -x

npm install
  code/server/npm start &


set +x
