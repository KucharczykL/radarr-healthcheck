# Radarr - With Healthcheck
This simple addition to the Radarr container adds a
health check that polls the official API to see
if there are any errors reported.

## Environmental Variables

* `RADARR_URL` - The URL to your Radarr container.
* `APIKEY` - This is by default copied from the `config.xml` file
in the `config` directory but you can set it here
explicitly if you like.
