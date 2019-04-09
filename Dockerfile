FROM centos:latest

LABEL maintainer="cool.docker@coolwinkydoggendoodle.com"

RUN yum -y update \
    && mkdir -p \
      /opt/shoutcast \
      /var/log/shoutcast

WORKDIR /opt/shoutcast

ADD "http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz" /opt/shoutcast/
RUN tar -xzf sc_serv2_linux_x64-latest.tar.gz && \
    /bin/rm sc_serv2_linux_x64-latest.tar.gz

VOLUME ["/etc/shoutcast","/var/log/shoutcast"]

EXPOSE 8000 8001 8002
CMD ["/opt/shoutcast/sc_serv", "/etc/shoutcast/shoutcast.conf"]
