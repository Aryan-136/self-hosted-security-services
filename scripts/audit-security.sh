#!/usr/bin/env bash
# ==============================================================================
# Zero-Trust Infrastructure Security Health Check
# Author: Aryan Pandya (Aryan-136)
# ==============================================================================
set -euo pipefail

echo "=========================================================="
echo " [SECURITY AUDIT] Running Zero-Trust Perimeter Checks..."
echo "=========================================================="

# 1. Verify WireGuard Handshakes
echo -n "[*] Checking WireGuard Active Handshakes: "
if docker exec wg_gateway wg show | grep -q "latest handshake"; then
    echo "OK (Peers Connected)"
else
    echo "IDLE (No active peer tunnels)"
fi

# 2. Check CrowdSec IPS Status & Decisions
echo "[*] Querying CrowdSec Active Threat Bans:"
docker exec crowdsec_engine cscli decisions list

# 3. Verify Vaultwarden Container Security
echo -n "[*] Vaultwarden Service Health: "
VW_STATUS=$(docker inspect --format='{{.State.Status}}' vaultwarden_core)
echo "$VW_STATUS"

# 4. Audit Open Host Ports
echo "[*] Scanning for unauthorized exposed listening ports:"
ss -tulwn | grep LISTEN || true

echo "=========================================================="
echo " [SUCCESS] Security audit completed."
echo "=========================================================="