#!/bin/bash
set -euo pipefail

for composefile in $(find . -name docker-compose.yml); do
  echo $composefile
  docker-compose -f $composefile up -d --remove-orphans
done
