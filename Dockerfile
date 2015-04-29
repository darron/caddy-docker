FROM darron/caddy:0.5.0-dev

RUN mkdir /srv

ADD . /srv

WORKDIR /srv

EXPOSE 2015

CMD caddy
