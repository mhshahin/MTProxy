FROM alpine

RUN apk --update add \
	git \
	nodejs && \
	cd $HOME && \
	git clone https://github.com/FreedomPrevails/JSMTProxy.git && \
	mv JSMTProxy/* . && \
	rm -rf JSMTProxy && \
	npm install -g pm2 && \
	rm -rf /tmp/* /var/cache/apk/*

WORKDIR $HOME
