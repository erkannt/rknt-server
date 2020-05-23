#!/bin/bash
set -euo pipefail

for composefile in $(find . -name docker-compose.yml); do
  docker-compose -f $composefile up -d
done
