FROM ubuntu:latest
MAINTAINER James Swineson <docker@public.swineson.me>

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y grafana\
	&& rm -rf /var/lib/apt/lists/* \

VOLUME [ "/var/lib/grafana", "/etc/grafana" ]
EXPOSE 3000
CMD [ "/usr/sbin/grafana", "--config=/var/lib/grafana/grafana.ini" ]
