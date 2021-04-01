
FROM ubuntu:xenial
LABEL maintainer="Spiros Denaxas s.denaxas@gmail.com"

ENV UKBURL=http://biobank.ctsu.ox.ac.uk/crystal/util

RUN apt-get update && apt-get -y install wget netbase

RUN for f in ukbunpack ukbfetch ukblink ukbgene ukbconv ukbmd5; do wget $UKBURL/$f -O /usr/local/bin/$f; chmod +x /usr/local/bin/$f ; done
RUN wget -nd  biobank.ndph.ox.ac.uk/showcase/util/encoding.ukb

COPY md5sums.txt /
RUN md5sum /usr/local/bin/ukbunpack \
           /usr/local/bin/ukbfetch \
           /usr/local/bin/ukblink \
           /usr/local/bin/ukbgene \
           /usr/local/bin/ukbconv \
           /usr/local/bin/ukbmd5 \
           encoding.ukb > md5here.txt
RUN md5sum -c md5here.txt

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
