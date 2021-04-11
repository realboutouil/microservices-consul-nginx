#!/bin/sh

sh -c "reload.sh &"
exec /entrypoint.sh "$@"