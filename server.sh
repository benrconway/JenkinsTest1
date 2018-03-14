#!/usr/bin/env sh

echo "Trying to build the project"
set -x

  code/server/npm install
  code/server/npm start &


set +x
