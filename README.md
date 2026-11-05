# ðŸ›¡ï¸ Self-Hosted Security Services: Zero-Trust, Vault & IPS

[![CrowdSec](https://img.shields.io/badge/IPS-CrowdSec-blue?style=flat-square&logo=crowdsec)](https://www.crowdsec.net/)
[![Vaultwarden](https://img.shields.io/badge/Secrets-Vaultwarden-blueviolet?style=flat-square&logo=bitwarden)](https://github.com/dani-garcia/vaultwarden)
[![WireGuard](https://img.shields.io/badge/VPN-WireGuard-red?style=flat-square&logo=wireguard)](https://www.wireguard.com/)

An enterprise-inspired security suite containing self-hosted password and credential vaulting, proactive intrusion prevention, encrypted VPN gateways, and automated SSH defense.

---

## ðŸ”’ Security Architecture
- **Vaultwarden**: Lightweight Bitwarden-compatible vault with Argon2id password hashing and mandatory 2FA.
- **CrowdSec**: Collaborative intrusion prevention engine analyzing Nginx and SSH logs to block brute-force attempts.
- **WireGuard**: Cryptographically secure tunnel connecting remote developer machines without exposing ingress ports.
