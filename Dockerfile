FROM octohost/caddy:0.5.0

ADD . /srv

WORKDIR /srv

EXPOSE 80

CMD caddy
