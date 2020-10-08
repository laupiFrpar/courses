FROM ubuntu:14.04
MAINTAINER Pierre-Louis Launay "laupi.frpar@gmail.com"
ENV REFRESHED_AT 2015-08-19
RUN apt-get update
RUN apt-get -y install redis-server redis-tools
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD []
