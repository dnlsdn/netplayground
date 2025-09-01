#!/bin/sh
set -eu

echo "[router] starting"
echo "[router] iptables: $(iptables -V || true)"

# Interfaces order in Compose: first network -> eth0 (LAN), second -> eth1 (WAN)
LAN_IF="eth0"
WAN_IF="eth1"

# DO NOT write to /proc/sys here; Compose sets net.ipv4.ip_forward=1
echo "[router] ip_forward (read-only here): $(cat /proc/sys/net/ipv4/ip_forward || echo '?')"

# Reset rules (ignore errors if empty)
iptables -F || true
iptables -t nat -F || true
iptables -X || true

# Forwarding policy: allow established traffic, allow LAN -> WAN
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i "$LAN_IF" -o "$WAN_IF" -j ACCEPT

# NAT (MASQUERADE) for 10.0.0.0/24 going out via WAN
iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o "$WAN_IF" -j MASQUERADE

echo "[router] rules loaded"
iptables -t nat -vnL
iptables -vnL

# Keep the container running
tail -f /dev/null
