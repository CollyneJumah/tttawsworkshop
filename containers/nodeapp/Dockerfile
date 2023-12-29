FROM node:14-alpine3.15

WORKDIR /app

RUN chown -R node /app

USER root

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD {"node", "server.js"}