#!/bin/bash

mv -fv /data1/nginx/access.log /data1/nginx/logs/$(date +%F)-access.log
mv -fv /data1/nginx/error.log /data1/nginx/logs/$(date +%F)-error.log

#docker exec -t nginx \
nginx -s reload

exit
