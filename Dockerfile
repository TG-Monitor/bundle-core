FROM weibeld/tg-monitor:base

WORKDIR /root

COPY tgm-main-core .

CMD ./bin/tgm-main-core
