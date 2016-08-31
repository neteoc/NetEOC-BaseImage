# Node.js app Docker file

FROM ubuntu:16.04


RUN apt-get update && apt-get install libpng12-0 nodejs nodejs-legacy npm curl -y 
RUN npm install -g webpack pm2 mocha
RUN curl -O https://releases.rancher.com/compose/v0.8.6/rancher-compose-linux-amd64-v0.8.6.tar.gz && tar -xzf rancher-compose-linux-amd64-v0.8.6.tar.gz && cp rancher-compose-v0.8.6/rancher-compose /usr/bin/rancher-compose && rm -f ./rancher-compose-linux-amd64-v0.8.6.tar.gz && rm -rf ./rancher-compose-v0.8.6
