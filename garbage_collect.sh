#!/bin/sh

defined_containers=""
for composefile in $(find . -name docker-compose.yml); do
    service=$(echo $composefile | cut -f 2 -d '/')
    containers=$(yq read ${composefile} --printMode p 'services.*' | sed -e 's/services\.//')
    for container in $containers; do
        defined_containers="${defined_containers} ${service}_${container}_1"
    done
done

running_containers=$(docker ps --format '{{.Names}}')

for container in ${running_containers}; do
    if echo ${defined_containers} | grep --quiet ${container}; then
        echo ${container} "is defined"
    else
        echo ${container} "not defined -- deleting"
        docker kill ${container}
    fi
done
