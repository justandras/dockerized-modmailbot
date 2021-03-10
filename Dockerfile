# Build
FROM node:12-alpine

WORKDIR /app

COPY . /app

RUN npm install --only=production

VOLUME ["/app/attachments", "/app/db", "/app/logs"]
EXPOSE 8890

CMD [ "node", "src/index.js" ]
