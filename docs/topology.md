# Topology

The lab simulates a small Internet-like environment with two networks:

- **LAN**: `10.0.0.0/24` (client, DNS, router LAN IP)
- **WAN**: `172.20.0.0/24` (two web servers, router WAN IP)

```mermaid
graph LR
  subgraph LAN [LAN 10.0.0.0/24]
    C[client 10.0.0.100]
    D[dns 10.0.0.2]
    R1[router 10.0.0.1]
  end

  subgraph WAN [WAN 172.20.0.0/24]
    R2[router 172.20.0.1]
    W1[web1 172.20.0.100]
    W2[web2 172.20.0.101]
  end

  C -->|DNS queries| D
  C -->|HTTP via NAT| R1
  R1 -->|NAT forward| R2
  R2 --> W1
  R2 --> W2
```
**Key points**
- The router performs **source NAT (masquerade)** for LAN → WAN traffic.
- DNS provides **round-robin A records** so `web.lab.test` alternates between `web1` and `web2`.
- You will capture **TCP handshakes** on the router WAN interface and analyze them with Wireshark.
