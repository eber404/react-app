FROM node:lts-alpine AS build-env

WORKDIR /app
COPY . .

RUN npm i
RUN npm run build

FROM node:lts-alpine AS deploy

WORKDIR /app
COPY . .

RUN npm i serve

CMD npx serve -l 8080