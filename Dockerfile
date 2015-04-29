FROM octohost/caddy:0.5.0-dev

ADD . /srv

WORKDIR /srv

EXPOSE 2015

CMD caddy
