构建镜像

```shell
$ docker build -t x-jenkins .
```

启动容器

```shell
$ docker run -d -p 8080:8080 -p 5000:5000 -v /Users/ifan/.m2/repository:/root/.m2/repository -v /var/run/docker.sock:/var/run/docker.sock --name jenkins x-jenkins
```

