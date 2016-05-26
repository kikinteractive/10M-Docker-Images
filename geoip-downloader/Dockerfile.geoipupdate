FROM alpine:3.1

# set up compiler
RUN apk --update add alpine-sdk zlib-dev curl-dev geoip geoip-dev && rm -rf /var/cache/apk/*

# no apk for geoipupdate, need to build it ourselves
ADD geoipupdate-2.2.1.tar.gz /
WORKDIR /geoipupdate-2.2.1
RUN ./configure && make && make install

# script generates config and updates
ADD ./geoipupdate.sh /

CMD ["sh","/geoipupdate.sh"]