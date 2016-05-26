#!/bin/sh

GEOIP_CONF=/tmp/GeoIP.conf

echo UserId ${MAXMIND_USER_ID:-999999} > $GEOIP_CONF
echo LicenseKey ${MAXMIND_LICENSE:-000000000000} >> $GEOIP_CONF
echo ProductIds ${MAXMIND_PRODUCTS:-GeoLite2-City GeoLite2-Country 506 517 533 106} >> $GEOIP_CONF

geoipupdate -v -f $GEOIP_CONF $@
