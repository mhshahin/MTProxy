#! /bin/bash

# Change values to your desired values
YOUR_PORT=9500
YOUR_SECRET=b0cbcef5a486d9636472ac27f8e12a8c

sed -i "s/b0cbcef5a486d9636472ac27f8e12a8c/${YOUR_SECRET}/" Dockerfile
sed -i "s/9500/${YOUR_PORT}/" Dockerfile

echo "Building mtproxy docker image..."

sleep 3

docker build -t mhshahin/mtproxy .

echo "Running mtproxy image ..."

sleep 3

docker run -itd --rm -p ${YOUR_PORT}:${YOUR_PORT} mtproxy

MTPROXY_ID=$(docker ps | grep mtproxy | awk '{print $1}')


echo "Running mtproxy service ..."

sleep 3

docker exec ${MTPROXY_ID} pm2 start mtproxy.js -i max

