# Proxmox Installation Notes

## Hardware
- Machine: Lenovo ThinkCentre
- CPU: Intel i7
- RAM: 64GB DDR4
- SSD 1 (OS): 256GB — Proxmox installed here
- SSD 2 (Data): 1TB — VM storage, added post-install

## Installation
- Proxmox VE: 8.x
- Hostname: proxmox.homelab.local
- IP: 192.168.1.101/24
- Gateway: 192.168.1.1
- DNS: 8.8.8.8
- Secure Boot: disabled in BIOS before install

## Post-install steps completed
- [x] Secure Boot disabled in BIOS
- [x] Proxmox VE 8 installed on 256GB SSD
- [x] Hostname: proxmox.homelab.local
- [x] IP: 192.168.1.101
- [x] Dual NIC confirmed — NIC2 reserved for pfSense (Phase 6)
- [x] Subscription nag removed
- [x] Enterprise repos removed
- [x] Community repo added
- [x] System fully updated
- [x] Tools installed: vim, curl, wget, git, htop, net-tools
- [x] Timezone set: Europe/London
- [x] Git identity configured on Proxmox node

## Next steps
- [ ] Add 1TB SSD as vm-storage pool (Step 4)
- [ ] Create Proxmox admin user (Step 5)
- [ ] Create Ubuntu Server VM (Phase 2)

## Lessons learned
- Secure Boot blocks unsigned bootloaders — always disable for Linux servers
- apt update refreshes package list, apt upgrade installs updates
- Enterprise repos need a paid licence — use community repo for homelab
- .sources and .list are both valid apt repo file formats