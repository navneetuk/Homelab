# Cloudflare Configuration

## Account Overview
- Domain: navneet.uk
- Purpose: DNS management + tunnel for remote access
- Cloudflare plan: Free

## DNS Records (document structure, not values)
| Type | Name | Purpose |
|---|---|---|
| A | @ | Root domain → points to server |
| CNAME | www | WWW redirect |
| TXT | @ | Domain verification records |

## Features in use
- [x] DNS management for navneet.uk
- [x] SAFE DNS filtering on router (1.1.1.3)
- [ ] Cloudflare Tunnel (planned - Phase 5)
- [ ] Zero Trust Access (planned - Phase 5)
- [ ] WAF rules (planned)

## Cloudflare Tunnel plan (Phase 5)
Will expose homelab services securely without opening
router ports:
  jellyfin.navneet.uk  → Jellyfin
  could expose other services as needed

## Important notes
- SAFE DNS (1.1.1.3) applied at router level
- This blocks some torrent indexers (known issue)
- Ubuntu VM uses 8.8.8.8 to bypass for lab use
- Dell XPS uses 8.8.8.8 custom DNS

## Credentials location
- Cloudflare API token: stored in 1Password
- Account email: stored in 1Password
- NEVER commit actual credentials to Git