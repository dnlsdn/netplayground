# NetPlayground — Mini-Internet in Docker

> A hands-on lab to learn **DNS, NAT, routing, and TCP** in a reproducible way.

## Why this project
- See networking concepts **in action**, not just theory.
- A publish-ready repository with **clear documentation** and **guided labs**.

## What you'll learn
- **DNS**: caching, round-robin, TTL
- **TCP**: three-way handshake, ports/sockets
- **IP/NAT**: masquerade, port forwarding
- **Topology**: LAN/WAN segments in Docker

## Requirements (to be installed later)
- Docker Desktop
- Wireshark (to analyze PCAP files)

## Roadmap (the small steps we'll follow)
- [ ] Step 1: Bootstrap repo (README, license, .gitignore)
- [ ] Step 2: Create structure and docs (`docs/`, `labs/`)
- [ ] Step 3: Minimal Compose with LAN/WAN networks
- [ ] Step 4: Services `web1`/`web2` on WAN
- [ ] Step 5: DNS (dnsmasq) with round-robin
- [ ] Step 6: Router (iptables) with NAT
- [ ] Step 7: Client (curl/dig/tcpdump) and first checks
- [ ] Step 8: PCAP captures (TCP three-way handshake)
- [ ] Step 9: Port forwarding (DNAT) + exercises
- [ ] Step 10: Extensions (WireGuard/Suricata/Bind/Unbound) + tests

## Current status
- Repo initialized. Structure and first services coming next.

## License
MIT — see `LICENSE`.
