#! /bin/bash

echo "Building mtproxy docker image..."

sleep 3

docker build -t mtproxy .

MTPROXY_ID=$(docker ps | grep mtproxy | awk '{print $1}')

echo ${MTPROXY_ID}

echo "Running mtproxy image ..."

sleep 3

docker exec ${MTPROXY_ID} pm2 start mtproxy.js -i max

