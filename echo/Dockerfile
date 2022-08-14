FROM golang:1.16.3-alpine
# アップデートとgitのインストール！！
RUN apk add --update &&  apk add git

# ワーキングディレクトリの設定
WORKDIR /go/src
COPY ./src /go/src

CMD go run main.go


