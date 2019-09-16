FROM node:10.16.3-alpine

COPY ./src /app
WORKDIR /app
RUN npm i
CMD ["node", "server.js"]
