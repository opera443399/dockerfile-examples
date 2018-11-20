# dockerfile-examples-py3-alpine
2018/11/20


构建
---
docker build -t job-run-web:py3 .


执行: [自定义镜像+内置py脚本]
---
$ docker run --rm -p 5000:5000 --name t003 job-run-web:py3
* Serving Flask app "run" (lazy loading)
* Environment: production
  WARNING: Do not use the development server in a production environment.
  Use a production WSGI server instead.
* Debug mode: on
* Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
* Restarting with stat
* Debugger is active!
* Debugger PIN: 348-219-550

> 优点是：在制作自定义镜像时，做一些init的工作，例如提前准备好依赖包

执行: [默认镜像+外置cmd]
---
$ docker run --rm job-run-web:py3 id www
uid=100(www) gid=101(www) groups=101(www),101(www)

> 优点是：像平常执行一条py指令一样简单
