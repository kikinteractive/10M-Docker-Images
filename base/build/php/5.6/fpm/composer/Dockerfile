FROM rounds/10m-php-fpm:5.6
MAINTAINER Ofir Petrushka @ Zendesk <opetrushka @ zendesk.com>

# Install composer package manager
# https://getcomposer.org/download/
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# install mercurial for hg command
RUN apt-get update && \ 
    apt-get install -y mercurial && \
    apt-get install -y php5-mcrypt php5-mysql && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo extension=$(dpkg -L php5-mcrypt | grep mcrypt.so) > /usr/local/etc/php/conf.d/mcrypt.ini
