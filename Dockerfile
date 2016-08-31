# Node.js app Docker file

FROM ubuntu:16.04


RUN apt-get update && apt-get install libpng12-0 nodejs nodejs-legacy npm -y && npm install -g webpack pm2 mocha
