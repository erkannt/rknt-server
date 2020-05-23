#!/bin/bash
set -euo pipefail

for composefile in $(find . -name docker-compose.yml); do
  echo docker-compose -f $composefile up -d
done
