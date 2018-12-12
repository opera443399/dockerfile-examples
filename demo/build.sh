#!/bin/sh
# 2018/12/12

image_name='demo'
image_ver=$(grep 'ENV APP_VERSION' Dockerfile |awk '{print $NF}')
GOARCH="amd64" GOOS="linux" CGO_ENABLED=0 go build -a --installsuffix cgo --ldflags="-s" -o whoamI
docker build -t ${image_name}:${image_ver} .
docker images |grep "${image_name}"
rm -f whoamI

