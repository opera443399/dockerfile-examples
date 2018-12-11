FROM alpine:3.8
RUN apk add --no-cache ca-certificates curl && \
    curl -L -O https://raw.githubusercontent.com/AliyunContainerService/log-pilot/master/assets/glibc/glibc-2.26-r0.apk && \
    apk add --allow-untrusted glibc-2.26-r0.apk && \
    rm -rf /var/cache/apk/*

ENV FILEBEAT_VERSION=6.5.2
RUN cd /tmp && \
    curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz && \
    tar xzvf filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz && \
    mkdir -p /data/server && \
    mv filebeat-${FILEBEAT_VERSION}-linux-x86_64 /data/server/filebeat && \
    rm -rf /tmp/*

WORKDIR /data/server/filebeat
CMD ["./filebeat"]
