# ARR Stack — Docker Compose Setup

## Services deployed
| Service | Port | Purpose |
|---|---|---|
| Prowlarr | 9696 | Indexer manager |
| Sonarr | 8989 | TV show management |
| Radarr | 7878 | Movie management |
| qBittorrent | 8080 | Torrent downloader |
| Jellyfin | 8096 | Media server |

## File locations
- Compose file: /srv/media/compose/docker-compose.yml
- Environment: /srv/media/compose/.env
- Configs: /srv/media/config/{service}/
- Media: /srv/media/tv and /srv/media/movies
- Downloads: /srv/media/downloads/complete

## Useful commands
- Start stack:   docker compose up -d
- Stop stack:    docker compose down
- Check status:  docker compose ps
- View logs:     docker compose logs -f [service]
- Restart one:   docker compose restart [service]

## Port reference
- 9696  Prowlarr
- 8989  Sonarr
- 7878  Radarr
- 8080  qBittorrent WebUI
- 6881  qBittorrent peer port
- 8096  Jellyfin

## Setup status
- [x] All containers running
- [ ] qBittorrent configured
- [ ] Prowlarr configured
- [ ] Radarr connected to Prowlarr + qBittorrent
- [ ] Sonarr connected to Prowlarr + qBittorrent
- [ ] Jellyfin media libraries set up