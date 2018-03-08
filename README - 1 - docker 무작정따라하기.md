# 도커 무작정 따라하기
- docker <명령어>
- 항상 root 권한으로 실행

## docker hubから公開中のイメージ検索
- https://hub.docker.com/ 를 통해 이미지공유
- docker search <이미지명>
```
docker search ubuntu
docker search centos
docker search redis
...
```

## docker イメージ設置（ダウンロード）
- docker pull <イメージ名>:<タグ名>
- タグ名＝バージョン

```
docker pull centos
docker pull ubuntu:latest
docker pull ubuntu:14.04
docker pull httpd:latest
```

## pullしたimageリスト表示
- docker images [イマージ名]
```
docker images
docker images ubuntu
```

## imagesからcontainer生成
- docker run [options] <イメージ名>:<タグ名> <実行>
```
docker run -it ubuntu:latest /bin/bash
docker run -ti --name hello ubuntu:latest /bin/bash
docker run -ti --name centos centos:latest
docker run -d -p 80:80 --name httpd-latest httpd:latest
```

## 生成したcontainerリスト表示
- docker ps [options]
```
docker ps
docker ps -a -q
docker ps -aq

curl http://localhost:80/index.html

docker logs -f httpd
```

## container状況関連
*docker <命令文> <container名 or contatiner ID or image名>*
- start : stop -> start
```
docker start hello
```
- restart
```
docker restart hello
```
- attach : 実行中のcontainerに再接続
```
docker attach hello
```
- exec : 実行中のcontainerに命令文書く
```
docker exec hello echo 'Hello world'
docker exec hello apt0get .....
docker exec hello yum -y ...
```
- stop
```
docker stop hello
```
- rm : container削除
```
docker rm hello
docker rm -f hello
docker rm -f $(docker ps -aq)
```
- rmi : image削除
```
docker rmi ubuntu:latest
docker rmi ubuntu
```



