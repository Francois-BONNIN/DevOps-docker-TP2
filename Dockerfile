FROM node:12-alpine3.9

WORKDIR /src

COPY /src/* ./src/

COPY package.json .

RUN npm i -D

EXPOSE 3000

CMD ["node", "src/index.js"]