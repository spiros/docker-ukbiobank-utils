
FROM ubuntu:xenial
LABEL maintainer="Spiros Denaxas s.denaxas@gmail.com"

ENV UKBURL=http://biobank.ctsu.ox.ac.uk/crystal/util

RUN apt-get update && apt-get -y install wget

RUN for f in ukbunpack ukbfetch ukblink ukbgene ukbmd5; do wget $UKBURL/$f -O /$f; chmod +x /$f ; done

COPY md5sums.txt /
RUN md5sum ukbunpack ukbfetch ukblink ukbgene ukbmd5 > md5here.txt
RUN md5sum -c md5here.txt

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
