# Dockerfile
- イメージ設定ファイル
- https://docs.docker.com/engine/reference/builder/#usage
- http://docs.docker.jp/engine/reference/builder.html

## Example
- ubuntu 14.04 + nginx 環境構築例
- Dockerfile　生成
```
FROM ubuntu:14.04
MAINTAINER Moon Dev <moon.kb.dev@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

VOLUME ["/data", "/etc/nginx/site-enabled", "/var/log/nginx"]

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
```
- build 命令文にてimage生成
- docker build \<options\> \<Dockfile経路\>
```
docker build --tag hello:0.1 .  
```
- run : 生成したimageからnginx container実行
- options : -d, -p 
- ホストのフォルダを事前にシェアして置く：\/tmp\/root\/data
```
docker run --name hello-ubuntu-nginx -d -p 44480:80 -v /tmp/root/data:/data hello:0.1
```
- localhost 接続確認
```
http://localhost:44480/
```
- run : 生成したimageからubuntu container実行
- options : -i, -t
```
docker run -it --name hello-ubuntu -v /tmp/root/data:/data hello:0.1 /bin/bash
#
```
