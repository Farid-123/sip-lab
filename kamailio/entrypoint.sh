#!/bin/bash

DOMAIN=${DOMAIN}

if [ ! -f /etc/letsencrypt/live/$DOMAIN/fullchain.pem ]; then
certbot certonly \
--standalone \
-d $DOMAIN \
--non-interactive \
--agree-tos \
-m admin@$DOMAIN
fi

kamailio -DD -E
