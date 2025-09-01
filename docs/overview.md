# NetPlayground — Project Overview

**Goal:** Provide a reproducible, hands-on mini-Internet lab to learn core networking concepts by doing:
- DNS (caching, round-robin, TTL)
- TCP (three-way handshake, ports/sockets)
- IP/NAT (masquerade, port forwarding)
- Segmented topology (LAN/WAN) in Docker

**What this project is not:** Production-ready infrastructure. It's an educational lab focused on clarity and reproducibility.

**How it is structured:**
- `docs/` — high-level documentation (overview, topology, setup).
- `labs/` — guided exercises (each lab has goals, background, steps, observations, and clean-up).
- Later steps will add Docker Compose services (`router`, `dns`, `client`, `web1`, `web2`) and scripts.

See also: `docs/topology.md` for the architecture diagram, `docs/setup.md` for prerequisites.
