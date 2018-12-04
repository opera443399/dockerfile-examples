FROM node:11.3-alpine
LABEL type imgLibrary

RUN apk add --no-cache yarn \
    && rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
RUN yarn config set -g registry https://registry.npm.taobao.org \
    && yarn config set "chromedriver_cdnurl" "https://npm.taobao.org/mirrors/chromedriver"
