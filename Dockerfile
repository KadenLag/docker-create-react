FROM node:latest

ENV NPM_CONFIG_LOGLEVEL warn

RUN mkdir -p /frontend
WORKDIR /frontend

VOLUME /var/lib/data
COPY ./ ./

RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
