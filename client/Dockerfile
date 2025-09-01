# Minimal LAN client with route tools, curl, and dig
FROM alpine:3.20
RUN apk add --no-cache iproute2 curl bind-tools
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
