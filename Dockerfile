FROM tsouhaieb/raspbian-jessie-amp
MAINTAINER tsouhaeib (tarhounisouhaieb@gmail.com)

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
