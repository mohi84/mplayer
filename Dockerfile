FROM library/debian:wheezy
MAINTAINER Fernando
#    El canvi de nameserver només ens cal a l'Esteve Terradas :) 
RUN apt-get update && \
apt-get -y upgrade && \
apt-get -y install mplayer && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* 
WORKDIR /musica
VOLUME [ "/musica2" ]
ENTRYPOINT [ "/usr/bin/mplayer" ]
