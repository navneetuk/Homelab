# Caddy Reverse Proxy

## Purpose
Caddy acts as reverse proxy for all homelab services.
Provides HTTPS with internal certificates for .homelab.local domains.

## How it works
1. Windows hosts file resolves *.homelab.local to 192.168.1.102
2. Caddy receives HTTPS request on port 443
3. Caddy routes to correct container using Docker internal DNS
4. Container responds, Caddy passes response back to browser

## Certificates
- Generated automatically by Caddy local CA
- Stored in /srv/media/config/caddy/data
- browser shows warning — click Advanced → Proceed to trust

## Service URLs
| Service | URL |
|---|---|
| Prowlarr | https://prowlarr.homelab.local |
| Sonarr | https://sonarr.homelab.local |
| Radarr | https://radarr.homelab.local |
| qBittorrent | https://qbit.homelab.local |
| Jellyfin | https://jellyfin.homelab.local |

## Windows hosts file location
C:\Windows\System32\drivers\etc\hosts

## Hosts entries required
192.168.1.102  prowlarr.homelab.local
192.168.1.102  sonarr.homelab.local
192.168.1.102  radarr.homelab.local
192.168.1.102  qbit.homelab.local
192.168.1.102  jellyfin.homelab.local