caddy-docker
==============

A Docker image for [Caddy]() - the base image is built like this:

```
FROM octohost/base:trusty

RUN curl -sLO https://github.com/mholt/caddy/releases/download/v0.5.0/caddy_linux_amd64.zip && unzip -d caddy caddy_linux_amd64.zip && mv caddy/caddy_linux_amd64 /usr/bin/caddy && chmod 755 /usr/bin/caddy && rm -rf caddy*
```

With this command:

`docker build -t octohost/caddy:0.5.0 .`
