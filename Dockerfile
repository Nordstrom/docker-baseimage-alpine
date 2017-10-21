FROM alpine:3.6
MAINTAINER Nordstrom Kubernetes Platform Team "techk8s@nordstrom.com"

RUN apk --update upgrade \
 && apk add \
      ca-certificates \
      curl \
 && rm -rf /var/cache/apk/*

COPY nordstrom-ca-certs/ /etc/ssl/nordstrom-ca-certificates/
