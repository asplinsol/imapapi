FROM node:14.4.0

WORKDIR /usr/src/app

EXPOSE 3000

ENV API_PORT=3000 API_HOST="0.0.0.0" LOG_LEVEL="warn"

COPY Gruntfile.js .
COPY package.json .
RUN npm install

COPY . .

CMD npm start