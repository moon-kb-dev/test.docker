# ..etc

## mac cli start
- https://stackoverflow.com/questions/40080887/how-do-i-restart-docker-for-mac-from-the-terminal
```
osascript -e 'quit app "Docker"'
open -a Docker
```

## DCT 機能の有効化
- Docker Content Trust
- なりすまし、改ざんから
- 書名のないイメージをつかうとエラー
```
export DOCKER_CONTENT_TRUST=1
# export DOCKER_CONTENT_TRUST=0 #Default直
```

