
FROM alpine:edge

ENV PORT        3000
ENV PASSWORD    1^Hi%wLjIm!5gf97
ENV METHOD      chacha20-ietf-poly1305

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && apk add --no-cache shadowsocks-libev curl && \

CMD ss-server -s 0.0.0.0 -p ${PORT} -k ${PASSWORD} -m $METHOD 
