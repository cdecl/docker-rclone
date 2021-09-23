
FROM alpine

ADD hqssl.cer /etc/ssl/certs/
RUN cat /etc/ssl/certs/hqssl.cer >> /etc/ssl/certs/ca-certificates.crt

RUN apk --update add minio-client --repository http://dl-3.alpinelinux.org/alpine/edge/testing/
RUN apk --update add bash tzdata git curl rclone && \
    rm -rf /var/lib/apt/lists/* && \
    rm -f /var/cache/apk/*

RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && echo "Asia/Seoul" > /etc/timezone
RUN ln -s /usr/bin/mcli /usr/bin/mc

ADD sync.sh /root/
ADD copy.sh /root/
RUN chmod +x /root/*.sh

