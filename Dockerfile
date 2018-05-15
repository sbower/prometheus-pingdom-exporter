FROM alpine:3.4
LABEL MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

COPY ./prometheus-pingdom-exporter /prometheus-pingdom-exporter
COPY ./entrypoint.sh /entrypoint.sh

RUN apk update && apk add ca-certificates

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]