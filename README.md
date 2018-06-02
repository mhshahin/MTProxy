# MTProxy Docker
Dockerfile for Telegram MTProxy

### Usage
1. Run the image using the following command:
```bash
docker run -itd -p 9500:9500 mhshahin/mtproxy
```
2. Run the MTProxy service inside the container using the following command:
```bash
docker exec <container_id> pm2 start mtproxy.js -i max
```
In order to get the 'container_id', execute this command:
```bash
docker ps | grep mtproxy | awk '{print $1}'
```
3. To get the Secret Key:
```bash
docker exec 1827be852842 env | grep SECRET | cut -b 13-
```
