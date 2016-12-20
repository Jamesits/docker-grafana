FROM ubuntu:latest
MAINTAINER James Swineson <docker@public.swineson.me>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y grafana\
	&& rm -rf /var/lib/apt/lists/* \

VOLUME /var/lib/grafana
CMD [ "grafana-server", "--config=/var/lib/grafana/grafana.ini" ]
