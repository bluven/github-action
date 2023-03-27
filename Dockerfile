FROM alpine:3.16

ARG REPOSITORY_URL=mirrors.tuna.tsinghua.edu.cn

RUN sed -i "s/dl-cdn.alpinelinux.org/${REPOSITORY_URL}/g" /etc/apk/repositories && \
    apk add curl
