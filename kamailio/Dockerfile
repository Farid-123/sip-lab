FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    kamailio \
    kamailio-extra-modules \
    kamailio-tls-modules \
    kamailio-rtpengine-modules \
    kamailio-utils-modules \
    certbot \
    iptables \
    && rm -rf /var/lib/apt/lists/*

COPY kamailio.cfg /etc/kamailio/kamailio.cfg
COPY tls.cfg /etc/kamailio/tls.cfg
COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
