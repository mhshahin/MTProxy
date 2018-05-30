FROM alpine

# Change values to your desired values
ENV YOUR_SECRET=b0cbcef5a486d9636472ac27f8e12a8c \
	YOU_PORT=9500

RUN apk --update add \
	git \
	nodejs && \
	cd /home && \
	git clone https://github.com/FreedomPrevails/JSMTProxy.git && \
	mv JSMTProxy/* . && \
	rm -rf JSMTProxy && \
	npm install -g pm2 && \
	sed 's/b0cbcef5a486d9636472ac27f8e11a9d/${YOUR_SECRET}/g' config.json && \
	sed 's/6969/${YOUR_PORT}/g' config.json && \
	rm -rf /tmp/* /var/cache/apk/*

WORKDIR /home