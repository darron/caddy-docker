caddy-docker
==============

A Docker image for [Caddy](https://caddyserver.com/). The container was built with this command:

`docker build -t darron/caddy:0.5.0-dev .`

From this `Dockerfile`:

```
FROM mini/base

RUN curl -sLO http://shared.froese.org/2015/caddy-static && mv caddy-static /usr/bin/caddy && chmod 755 /usr/bin/caddy
```

I compiled from src because of [this issue](https://github.com/mholt/caddy/issues/13) which wasn't fixed in the 0.5.0 release and to statically link the binary.

Binary was built like this:

```
go get github.com/mholt/caddy
cd $GOROOT/src/github.com/mholt/caddy
CGO_ENABLED=0 go build -a -installsuffix cgo
```
