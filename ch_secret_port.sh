#! /bin/bash

MTPROXY_ID=$(docker ps | grep mtproxy | awk '{print $1}')

docker exec ${MTPROXY_ID} sed 's/b0cbcef5a486d9636472ac27f8e11a9d/${YOUR_SECRET}/g' config.json

docker exec ${MTPROXY_ID} sed 's/6969/$YOUR_PORT/g' config.json
