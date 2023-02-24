FROM node:19-alpine

ENV PORT=8080

WORKDIR /home/node/app

COPY package*.json .

RUN npm install

COPY . .

CMD [ "npm", "run", "start:dev" ]

EXPOSE 8080