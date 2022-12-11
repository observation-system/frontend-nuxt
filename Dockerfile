FROM node:18.1-alpine

WORKDIR /src
RUN yarn global add @vue/cli
EXPOSE 3000
