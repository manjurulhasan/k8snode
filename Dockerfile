FROM node:16-alpine

WORKDIR /app

COPY package.json .

VOLUME [ "/node_module" ]

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]