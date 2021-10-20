#!/bin/sh
cp /tmp/code.tar.gz /usr/workspace/code.tar.gz 
cd /usr/workspace 
tar -zxf /usr/workspace/code.tar.gz -C /usr/code 
rm /usr/workspace/code.tar.gz
export DENO_DIR="/usr/code/denoCache"
cd /usr/local/src/
denon run --allow-net --allow-read --allow-env server.ts