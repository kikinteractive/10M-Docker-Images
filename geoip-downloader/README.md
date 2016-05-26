A data volume for GeoIP databases
=================================

Downloads and updates GeoIP databases to a volume, to be used with `--volumes-from` in other services.

Building
--------

Due to the split of geoipupdate into a separate package this process is slightly more complicated than it needs to be:

```bash
mkdir -p ./databases 
docker build -t geoipupdate -f Dockerfile.geoipupdate . 
docker run -v $(pwd)/databases:/usr/local/share/GeoIP geoipupdate 
```

You can configure the following environment variables to tune which databases are updated. 

```
MAXMIND_USER_ID - Your Maxmind userid
MAXMIND_LICENSE - Your Maxmind license key
MAXMIND_PRODUCTS - The Maxmind products you want downloaded/installed 
```

The above default to the free GeoLite2 databases, as shown [here](http://dev.maxmind.com/geoip/geoipupdate/).

To install licensed databases:

```bash
docker run -e MAXMIND_USER_ID=123456 -e MAXMIND_LICENSE=XYZ -e 'MAXMIND_PRODUCTS=GeoIP2-Country GeoIP2-City 121' -v $(pwd)/databases:/usr/local/share/GeoIP geoipupdate
```

This will result in a `databases` dir with the updated databases. 

Running
-------

```bash
docker build -t geoip . 
docker run geoip -f /usr/share/GeoIP/GeoLiteCity.dat 203.32.112.20
```

The geoip image will have a volume at `/usr/share/GeoIP` that you can use via `volumes-from` in other images.

