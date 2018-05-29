#! /bin/bash

# Use "tail -f /dev/null" to run the process in foreground
# in order to prevent the container to stop immediately
# after starting the container
pm2 start mtproxy.js -i max | tail -f /dev/null