# Linux router with iptables NAT
FROM alpine:3.20
RUN apk add --no-cache iptables iproute2 bash tcpdump
COPY rules.sh /rules.sh
RUN chmod +x /rules.sh
ENTRYPOINT ["/bin/sh", "/rules.sh"]
