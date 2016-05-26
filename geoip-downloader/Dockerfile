FROM gliderlabs/alpine:3.1

VOLUME /usr/share/GeoIP
RUN apk --update add geoip
ADD databases /usr/share/GeoIP
ADD databases/GeoIP.conf /etc/

ENTRYPOINT ["geoiplookup"]