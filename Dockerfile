FROM alpine:3.4
MAINTAINER Nordstrom Kubernetes Platform Team "techk8s@nordstrom.com"

RUN apk --update upgrade \
 && apk add ca-certificates \
 && rm -rf /var/cache/apk/*
