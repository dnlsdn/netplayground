# Lab 01 — TCP Three-Way Handshake

**Goal**
- Capture and inspect the SYN → SYN/ACK → ACK sequence when a client connects to a server through the router.

**Background**
- TCP establishes reliable connections using the three-way handshake.
- NAT can alter source addresses; capturing on the router WAN side shows the external view.

**Prerequisites**
- Will be available after Step 7+ (client, router, and web services running).

**Steps**
- TBA in later steps (capture on router interface, curl from client).

**Observe**
- The SYN → SYN/ACK → ACK sequence and NATed source addresses in the pcap.

**Cleanup**
- Stop packet capture; remove temp files.
