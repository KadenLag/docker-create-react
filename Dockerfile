FROM node:8.9.4

ENV NPM_CONFIG_LOGLEVEL warn
ARG app_env
ENV APP_ENV $app_env

WORKDIR /frontend

RUN yarn

EXPOSE 4000

CMD [ "yarn", "start" ]
