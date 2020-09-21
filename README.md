# Radarr — With Healthcheck

Simple healthcheck that polls the official Radarr v3 API to see if there are
any problems. Based on the `linuxserver/radarr:preview` image.

## Environmental Variables

Both MUST be defined otherwise the healthcheck will fail.

- `RADARR_URL` - The URL to your Radarr container. Either an IP address with
  port number or URL if you're using a reverse proxy.
- `APIKEY` - Can be found in Settings -> General.
