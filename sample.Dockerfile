FROM golang

ARG app_env
ENV APP_ENV $app_env

COPY ./app /go/src/github.com/user/myProject/app
WORKDIR /go/src/github.com/user/myProject/app

RUN go get github.com/codegangsta/gin
RUN go-wrapper download
RUN go-wrapper install

ENV TELE_KEY <insert_key>

EXPOSE 3000
