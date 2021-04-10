#!/bin/sh

sh -c "confWatcher.sh &"
exec /docker-entrypoint.sh "$@"
