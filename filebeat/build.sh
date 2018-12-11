#!/bin/sh
# 2018/12/11

image_name='opera443399/filebeat'
image_ver=$(grep 'ENV FILEBEAT_VERSION=' Dockerfile |grep -Eo '[0-9]\.[0-9]\.[0-9]')
docker build -t ${image_name}:${image_ver} .
docker images |grep "${image_name}"
