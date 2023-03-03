FROM node:lts-alpine AS build-env

WORKDIR /app
COPY . .

RUN npm i
RUN npm run build
RUN cd build

CMD npx serve -l 8080