#!/bin/sh
set -Eeuo pipefail

while true
do
 inotifywait --exclude .swp -e create -e modify -e delete -e move /etc/nginx/conf.d
 nginx -T
 if [ $? -eq 0 ]; then
  echo "Detected Nginx Configuration Change"
  echo "Executing: nginx -s reload"
  nginx -s reload
  nginx -T
 fi
done
