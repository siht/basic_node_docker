FROM node:10.16.3-alpine

COPY ./src /app
WORKDIR /app
RUN npm i --only=prod
CMD ["node", "server.js"]
