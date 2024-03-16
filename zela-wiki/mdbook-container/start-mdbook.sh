#!/usr/bin/env sh
mdbook build /data 	--dest-dir /output
mdbook watch /data 	--dest-dir /output &
pid=$!

trap "echo 'Caught signal; killing watchers'; kill ${pid1} ${pid2}; exit 1" INT QUIT TERM

wait