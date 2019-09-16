# Basic node environment

## especifics

this recipe runs with

- node:10.16.3-alpine
- mongo:4.0.3

also needs to put your code in a folder named src

## how to install dependencies for development process

inside your src folder run this command

```bash
docker run --rm -ti -v "$PWD:/app" -w "/app" --user "$(id -u):$(id -g)" node:10.16.3-alpine npm i
```

## run

### development

```bash
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
```

### production

not available in this moment but you can run

```bash
docker-compose up
```
