# Build
FROM node:12-alpine

WORKDIR /app

COPY . /app

RUN npm install --only=production

CMD [ "node", "main.js" ]
