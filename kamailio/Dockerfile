FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# base tools
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    lsb-release

# add Kamailio repo
RUN curl -fsSL http://deb.kamailio.org/kamailiodebkey.gpg \
    | gpg --dearmor -o /usr/share/keyrings/kamailio.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/kamailio.gpg] \
http://deb.kamailio.org/kamailio58 noble main" \
> /etc/apt/sources.list.d/kamailio.list

# install kamailio
RUN apt-get update && apt-get install -y \
    kamailio \
    kamailio-extra-modules \
    kamailio-tls-modules \
    certbot \
    iptables \
    && rm -rf /var/lib/apt/lists/*

COPY kamailio.cfg /etc/kamailio/kamailio.cfg
COPY tls.cfg /etc/kamailio/tls.cfg
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
