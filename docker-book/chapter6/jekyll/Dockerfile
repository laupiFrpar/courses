FROM ubuntu:14.04
MAINTAINER Pierre-Louis Launay <laupi.frpar@gmail.com>
ENV REFRESHED_AT 2015-09-03

RUN apt-get -yqq update
RUN apt-get -yqq install ruby ruby-dev make nodejs
RUN gem install --no-rdoc --no-ri jekyll

VOLUME /data
VOLUME /var/www/html
WORKDIR /data

ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]
