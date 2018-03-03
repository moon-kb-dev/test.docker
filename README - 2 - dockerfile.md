# Dockerfile
- イメージ設定ファイル
- https://docs.docker.com/engine/reference/builder/#usage
- http://docs.docker.jp/engine/reference/builder.html

## Example
- ubuntu 14.04 + nginx 環境構築例
- Dockerfile　生成
```
FROM ubuntu
RUN yum -y install httpd; yum clean all
EXPOSE 80
CMD ["/usr/sbin/init"]


```
