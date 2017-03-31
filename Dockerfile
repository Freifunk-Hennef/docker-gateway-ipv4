FROM ffhef/debian-batman:8.3-2017.0

MAINTAINER Nico - Freifunk Hennef <nico@freifunk-hennef.de>

RUN apt-get update && apt-get install -y bird iptables tcpdump jq && apt-get clean && \
    rm -rf /var/lib/apt/lists /tmp/* /var/tmp/* && \
    mkdir -p /run/bird

ADD /bird.conf.in /etc/bird/bird.conf.in
ADD /entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "-f", "-u", "bird", "-g", "bird" ]