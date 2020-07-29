FROM alpine:latest

RUN apk add socat

ADD docker/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



