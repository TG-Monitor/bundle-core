#!/bin/bash

TAG=${1:-core-0.0.1}

# Set values before executing
TG_API_ID=
TG_API_HASH=
MAILGUN_API_KEY=
MAILGUN_SENDING_ADDRESS=
AMQP_URI=

docker run --rm -d \
  -e TG_API_ID="$TG_API_ID" \
  -e TG_API_HASH="$TG_API_HASH" \
  -e MAILGUN_API_KEY="$MAILGUN_API_KEY" \
  -e MAILGUN_DOMAIN="$MAILGUN_DOMAIN" \
  -e MAILGUN_SENDING_ADDRESS="$MAILGUN_SENDING_ADDRESS" \
  -e AMQP_URI="$AMQP_URI" \
  -v tg-monitor:/var/tmp/tg-monitor \
  weibeld/tg-monitor:"$TAG"
