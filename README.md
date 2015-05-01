caddy-docker
==============

A Docker image for [Caddy](https://caddyserver.com/). The container was built with this command:

`docker build -t darron/caddy .`

From this `Dockerfile`:

```
FROM mini/base

RUN curl -sLO https://github.com/mholt/caddy/releases/download/v0.5.1/caddy_linux_amd64.zip && unzip caddy_linux_amd64.zip && mv caddy_linux_amd64 /usr/bin/caddy && chmod 755 /usr/bin/caddy && rm -rf caddy*
```
