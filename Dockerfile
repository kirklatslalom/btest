FROM node:0.10.40
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app/ .
COPY ./docker-entrypoint.sh .
RUN npm install
ENTRYPOINT ["./docker-entrypoint.sh"]
