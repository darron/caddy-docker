caddy-docker
==============

A Docker image for [Caddy]() - the base image is built like this:

```
FROM octohost/base:trusty

RUN curl -sLO http://shared.froese.org/2015/caddy && mv caddy /usr/bin/caddy && chmod 755 /usr/bin/caddy
```

I compiled from src because of [this issue](https://github.com/mholt/caddy/issues/13) which wasn't fixed in the 0.5.0 release.

With this command:

`docker build -t octohost/caddy:0.5.0-dev .`
