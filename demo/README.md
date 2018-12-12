# demo

2018/12/12

```bash
docker build -t demo:v1 .
docker run -d --name demo1 -p 3333:80 demo:v1
docker ps |grep -E "(NAME|demo1)"
docker rm -f demo1
docker service create --name demo2 --detach=true --with-registry-auth --publish 4444:80 --replicas=3 demo:v1
docker service ps demo2
docker tag demo:v1 demo:v2
docker images |grep -E "(TAG|demo)"
docker service update --detach=false --with-registry-auth demo2 --image demo:v2
docker service ps demo2
docker service rm demo2
docker stack deploy -c stack.yml gift
docker stack ls
docker stack ps gift
docker stack rm gift
```
