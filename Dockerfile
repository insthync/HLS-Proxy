FROM node:20-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./
COPY hls-proxy ./hls-proxy

USER root

RUN npm install

ENV PORT=80

EXPOSE 80

CMD ["npm","run","start"]
