#!/bin/bash
set -euo pipefail

for composefile in $(find . -name docker-compose.yml); do
  echo docker-compose -f $composefile up -d --remove-orphans
  docker-compose -f $composefile up -d --remove-orphans
done
