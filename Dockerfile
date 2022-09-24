FROM alpine:3.14
RUN apk add git=2.32.3-r0 --no-cache
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
