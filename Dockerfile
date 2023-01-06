
FROM node:16.17.0 as dev

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

EXPOSE 3000

CMD ["npm", "run", "dev"]