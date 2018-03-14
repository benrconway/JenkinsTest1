#!/usr/bin/env sh

echo "Trying to build the project"
set -x
nodejs('testjs'){
  server/npm install
  server/npm start &
}

set +x
