FROM node:17-alpine

CMD ["npm", "start"]

RUN apk add --no-cache git
WORKDIR /app

COPY package.json ./
RUN npm i

COPY . .