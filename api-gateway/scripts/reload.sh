#!/bin/sh

while true; do
  inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/conf.d
  nginx -t
  if [ $? -eq 0 ]; then
    echo "Reloading nginx with new configuration"
    echo "Executing: nginx -s reload"
    nginx -s reload
  fi
done
