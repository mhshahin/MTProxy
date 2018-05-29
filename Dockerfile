FROM node:alpine

ADD JSMTProxy $HOME/node
WORKDIR $HOME/node/

RUN npm install -g pm2

CMD sh start.sh