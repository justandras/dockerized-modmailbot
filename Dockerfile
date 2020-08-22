# Build
FROM node:12-alpine as build

WORKDIR /app

COPY . /app

RUN npm install --only=production

CMD [ "node", "main.js" ]
