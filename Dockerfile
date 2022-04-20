FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 8000:8000

CMD [ "node", "server.js" ]
