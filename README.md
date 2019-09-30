# Basic node environment

this recipe runs 2 projects in single one:

- [node_simple_static_server](https://github.com/siht/node_simple_static_server)
- [node_api_test](https://github.com/siht/node_api_test)

## especifics

for node_api_test:

- node:10.16.3-alpine
- mongo:4.0.3

for node_simple_static_server:

- node:10.16.3-alpine

this project needs to clone both projects in a folder named src

## how to install dependencies for development process

inside your src/node_api_test and src/node_simple_static_server folder run this command

```bash
docker run --rm -ti -v "$PWD:/app" -w "/app" --user "$(id -u):$(id -g)" node:10.16.3-alpine npm i
```

## run

first you need a .env file with these variables set

API_PORT, MONGO, FRONT_PORT, API_URL, IMGUR_CLIENT_ID, IMGUR_URL

### development

```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
```

### production

not available in this moment but you can run

```bash
docker-compose up
```
