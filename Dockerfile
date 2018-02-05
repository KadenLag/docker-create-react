FROM node:latest

ENV NPM_CONFIG_LOGLEVEL warn
ARG app_env
ENV APP_ENV $app_env

RUN mkdir -p /frontend /var/lib/data \
  && chown -R /var/lib/data
WORKDIR /frontend

VOLUME /var/lib/data
COPY ./ ./

RUN yarn

EXPOSE 3000

CMD [ "yarn", "start" ]
