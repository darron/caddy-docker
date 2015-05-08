caddy-docker
==============

<a href='https://imagelayers.io/?images=darron/caddy:latest' title='Get your own badge on imagelayers.io'><img src='https://badge.imagelayers.io/darron/caddy.svg'></a>

A Docker image for [Caddy](https://caddyserver.com/). The container was built with this command:

`docker build -t darron/caddy .`

From this `Dockerfile`:

```
FROM mini/base

RUN curl -sLO https://github.com/mholt/caddy/releases/download/v0.6.0/caddy_linux_amd64.zip && unzip caddy_linux_amd64.zip && mv caddy /usr/bin/caddy && chmod 755 /usr/bin/caddy && rm -rf caddy*
```
