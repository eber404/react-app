FROM node:lts-alpine

WORKDIR /app
COPY . .

RUN npm i
RUN npm run build

CMD PORT=$PORT npm run serve