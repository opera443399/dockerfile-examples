# dockerfile-examples-py2-alpine
2018/11/20


构建
---
docker build -t job-run-once:py2 .


执行: [自定义镜像+内置py脚本]
---
$ docker run --rm --name t002 job-run-once:py2
x

> 优点是：在制作自定义镜像时，做一些init的工作，例如提前准备好依赖包

执行: [默认镜像+外置py脚本]
---
$ docker run --rm -v "$PWD":/opt/app -w /opt/app job-run-once:py2 python y.py
y

> 优点是：像平常执行一条py指令一样简单
