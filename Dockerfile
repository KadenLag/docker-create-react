FROM node:8.9.4

ENV NPM_CONFIG_LOGLEVEL warn
ARG app_env
ENV APP_ENV $app_env

RUN mkdir -p /frontend
WORKDIR /frontend
VOLUME /var/lib/data
COPY ./ ./

RUN yarn

EXPOSE 4000

CMD [ "yarn", "start" ]
