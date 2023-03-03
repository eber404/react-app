FROM node:lts-alpine AS build

WORKDIR /app
COPY . .

RUN npm i
RUN npm run build

CMD npm run serve