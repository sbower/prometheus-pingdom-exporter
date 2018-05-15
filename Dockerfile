FROM alpine:3.4
MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

COPY ./prometheus-pingdom-exporter /prometheus-pingdom-exporter
COPY ./entrypoint.sh /entrypoint.sh

RUN apk update && apk add ca-certificates

EXPOSE 8123

ENTRYPOINT ["/entrypoint.sh"]