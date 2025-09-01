# Setup

## Requirements
- Docker Desktop (latest stable)
- Wireshark (to analyze `.pcap` files)
- Optional: `make`, `gh` (GitHub CLI)

## Verify Docker
```bash
docker version
docker compose version
```

## Notes
- The project will use Docker Compose to define two networks (LAN/WAN) and five services (router, dns, client, web1, web2).
- The labs will tell you when to run specific commands. You don't need to start any service yet.

## Optional tools
- **GitHub CLI (`gh`)** helps create/push the repo from the terminal.
- **Make** can be used later to expose convenience commands (e.g., `make up`, `make pcap`).

## Troubleshooting
- If `docker compose` is not found, ensure Docker Desktop is installed and running.
- On first run, Docker may ask for additional permissions on macOS.
