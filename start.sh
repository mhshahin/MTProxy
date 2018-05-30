#! /bin/bash

# Use "tail -f /dev/null" to run the process in foreground
# in order to prevent the container to stop immediately
# after starting the container

MTPROXY_ID=$(docker ps | grep mtproxy | awk '{print $1}’)
docker exec ${MTPROXY_ID} pm2 start mtproxy.js -i max
