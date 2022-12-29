FROM alpine:3.17

USER root
RUN apk --update add --no-cache logrotate && \
    rm -f /etc/logrotate.d/* && \
    apk --update add --no-cache tzdata && \
    apk --update add --no-cache busybox-extras && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" >/etc/timezone
CMD crond -f

