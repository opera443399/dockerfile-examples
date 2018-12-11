FROM node:11.3-alpine
LABEL type imgLibrary

RUN apk add --no-cache yarn \
    && rm -rf /var/cache/apk/*
RUN yarn config set registry https://registry.npm.taobao.org -g \
    && yarn config set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver -g
