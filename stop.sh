#! /bin/bash

MTPROXY_ID=$(docker ps | grep mtproxy | awk '{print $1}')
docker exec ${MTPROXY_ID} pm2 stop mtproxy.js -i max