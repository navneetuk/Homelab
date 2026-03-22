# Lab Network Plan

## Subnet: 192.168.1.0/24

| IP | Hostname | Role | Status |
|---|---|---|---|
| 192.168.1.1 | router | Home gateway | Active |
| 192.168.1.101 | proxmox.homelab.local | Proxmox hypervisor | Active ✓ |
| 192.168.1.102 | ubuntu-lab.homelab.local | Ubuntu VM - Docker | Static IP confirmed ✓ |
| 192.168.1.103 | winserver-ad.homelab.local | Windows Server AD | Planned |
| 192.168.1.104 | pfsense.homelab.local | pfSense firewall | Planned |
| 192.168.1.105 | kali.homelab.local | Kali Linux | Planned |
| 192.168.1.200 | nas.homelab.local | Synology NAS 12TB | Active |

## DHCP Range
- Router assigns: 192.168.1.140 and above
- Static range: 192.168.1.101 - 192.168.1.139 (reserved for lab)

## Physical Devices
| Device | IP | Role |
|---|---|---|
| Dell XPS Win11 | DHCP | Primary workstation |
| ThinkCentre i7 | 192.168.1.101 | Proxmox host |
| Synology NAS | 192.168.1.200 | Storage + backups |
| MacBook M4 Pro | DHCP | Secondary workstation |

## Network Interfaces
| Device | Interface | Notes |
|---|---|---|
| Proxmox | NIC1 (vmbr0) | Main network bridge |
| Proxmox | NIC2 | Reserved for pfSense WAN (Phase 6) |
| ubuntu-lab | enp6s18 | Main interface |

## DNS
- Current: 8.8.8.8 (Google) on all devices
- Planned: pfSense local DNS in Phase 6
- Future local domain: homelab.local

## VLANs (Phase 6 - pfSense)
| VLAN | Purpose | Subnet |
|---|---|---|
| VLAN 10 | Management | 192.168.10.0/24 |
| VLAN 20 | Servers | 192.168.20.0/24 |
| VLAN 30 | Security lab | 192.168.30.0/24 |

## Firewall Rules (planned - Phase 6)
- Management VLAN can access all
- Server VLAN isolated from security lab
- Security lab (Kali) isolated from production

## Notes
- All servers use static IPs
- DHCP range starts at .140 to avoid conflicts
- homelab.local is internal domain name
- Remote access via Tailscale planned (Phase 5)