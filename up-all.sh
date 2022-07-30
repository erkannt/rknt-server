#!/bin/bash
set -euo pipefail

for composefile in $(find . -name docker-compose.y*); do
  echo docker-compose -f $composefile up --build -d --remove-orphans
  docker-compose -f $composefile up -d --build --remove-orphans
done
