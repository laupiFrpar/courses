FROM ubuntu:14.04
MAINTAINER Pierre-Louis Launay <laupi.frpar@gmail.com>
ENV REFRESHED_AT 2015-09-03

RUN apt-get -yqq update
RUN apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapp/" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "-?" ]
