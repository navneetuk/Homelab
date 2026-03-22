# Ubuntu Lab VM Setup Notes

## VM Specs
- VM ID: 103
- Name: ubuntu-lab
- CPU: 2 cores (host type)
- RAM: 4GB
- Disk: 40GB on vm-storage (1TB SSD)
- Machine type: q35
- Network: VirtIO on vmbr0

## OS
- Ubuntu Server 24.04.4 LTS
- Codename: noble
- Kernel: 6.8.0-106-generic

## Network
- Interface: enp6s18
- IP: 192.168.1.102/24 (static)
- Gateway: 192.168.1.1
- DNS: 8.8.8.8, 8.8.4.4
- Config file: /etc/netplan/50-cloud-init.yaml

## Access
- SSH: ssh navneet@192.168.1.102
- User: navneet (sudo enabled)

## Software installed
- [x] qemu-guest-agent (Proxmox integration)
- [x] System fully updated (March 2026)
- [ ] Docker + Docker Compose (Phase 3)
- [ ] UFW firewall (next step)

## Lessons learned
- Netplan uses YAML for network config on Ubuntu 24.04
- Static IPs essential for servers — DHCP only for desktops
- SSH drops when IP changes — expected behaviour
- known_hosts file tracks SSH server fingerprints

## Software installed
- [x] qemu-guest-agent (Proxmox integration)
- [x] System fully updated (March 2026)
- [x] UFW firewall active (ports 22, 80, 443 open)
- [x] Docker 29.3.0 installed
- [x] Docker Compose v5.1.1 installed
- [x] hello-world container verified
- [ ] ARR stack (Phase 3)
- [ ] Jellyfin media server (Phase 4)

## Docker info
- Install method: Official Docker repository
- Compose: Plugin v2 (docker compose not docker-compose)
- User navneet added to docker group
- Images stored: /var/lib/docker

## UFW rules
- 22/tcp  (SSH)   ALLOW
- 80/tcp  (HTTP)  ALLOW
- 443/tcp (HTTPS) ALLOW
- Default: deny incoming, allow outgoing