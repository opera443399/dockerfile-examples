# filebeat
2018/12/11

[help]
docker run --rm --name log1 -v "$(pwd)/filebeat.yml:/data/server/filebeat/filebeat.yml" -w "/data/server/filebeat" opera443399/filebeat:6.5.2 ./filebeat -h

[test]
docker run --rm --name log1 -v "$(pwd)/filebeat.yml:/data/server/filebeat/filebeat.yml" -w "/data/server/filebeat" opera443399/filebeat:6.5.2 ./filebeat test config
docker run --rm --name log1 -v "$(pwd)/filebeat.yml:/data/server/filebeat/filebeat.yml" -w "/data/server/filebeat" opera443399/filebeat:6.5.2 ./filebeat test output

[run]
docker run --rm --name log1 -v "$(pwd)/filebeat.yml:/data/server/filebeat/filebeat.yml" -w "/data/server/filebeat" opera443399/filebeat:6.5.2 ./filebeat -e
