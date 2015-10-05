FROM laupifrpar/redis
MAINTAINER Pierre-Louis Launay <laupi.frpar@gmail.com>
ENV REFRESHED_AT 2015-10-05

ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379" ]
