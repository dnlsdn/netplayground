#!/bin/sh
set -eu

GW="10.0.0.254"
WAN_NET="172.20.0.0/24"

# Add route for WAN via router (fail loudly if it breaks)
ip route add "$WAN_NET" via "$GW" dev eth0 || { echo "[client] route add FAILED"; ip route; exit 1; }

echo "[client] routes:"
ip route
echo "[client] resolv.conf:"
cat /etc/resolv.conf || true

# Keep the container alive
tail -f /dev/null
