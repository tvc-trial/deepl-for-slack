FROM node:14.15.0-buster-slim

WORKDIR /app
COPY package.json /app
COPY tsconfig.json /app
COPY src /app/src
RUN cd /app && npm install

CMD ["npm","start"]