# Lab 03 — NAT & Port Forwarding

**Goal**
- Verify source NAT (masquerade) for LAN → WAN.
- Configure a DNAT rule to expose a LAN service via the router.

**Background**
- NAT conserves address space and adds a layer of indirection for security and reachability.

**Prerequisites**
- Will be available after Step 6+ (router with iptables) and Step 7 (client).

**Steps**
- TBA in later steps (list iptables NAT table, add DNAT rule, test reachability).

**Observe**
- MASQUERADE counters increasing and successful external access via DNAT.

**Cleanup**
- Remove DNAT rules; stop any temporary servers.
