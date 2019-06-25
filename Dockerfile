FROM alpine:3.5

RUN apk add --update --no-cache bash \
  curl \
  curl-dev \
  php5-intl \
  php5-openssl \
  php5-dba \
  php5-sqlite3 \
  php5-pear \
  php5-phpdbg \
  php5-gmp \
  php5-pdo_mysql \
  php5-pcntl \
  php5-common \
  php5-xsl \
  php5-fpm \
  php5-mysql \
  php5-pgsql \
  php5-mysqli \
  php5-enchant \
  php5-pspell \
  php5-snmp \
  php5-doc \
  php5-dev \
  php5-xmlrpc \
  php5-embed \
  php5-xmlreader \
  php5-pdo_sqlite \
  php5-exif \
  php5-opcache \
  php5-ldap \
  php5-posix \
  php5-gd  \
  php5-gettext \
  php5-json \
  php5-xml \
  php5 \
  php5-iconv \
  php5-sysvshm \
  php5-curl \
  php5-shmop \
  php5-odbc \
  php5-phar \
  php5-pdo_pgsql \
  php5-imap \
  php5-pdo_dblib \
  php5-pgsql \
  php5-pdo_odbc \
  php5-xdebug \
  php5-zip \
  php5-cgi \
  php5-ctype \
  php5-mcrypt \
  php5-wddx \
  php5-bcmath \
  php5-calendar \
  php5-dom \
  php5-sockets \
  php5-soap \
  php5-apcu \
  php5-sysvmsg \
  php5-zlib \
  php5-ftp \
  php5-sysvsem \
  php5-pdo \
  php5-bz2 \
  php5-mysqli

RUN apk add --update --no-cache imagemagick-dev \
  ffmpeg
#RUN ln -s /usr/bin/php5 /usr/bin/php

ADD php.ini /usr/local/etc/php/php.ini

RUN curl -sS https://getcomposer.org/installer | php5 -- --install-dir=/usr/bin --filename=composer \
  && chmod +x /usr/bin/composer

RUN composer global require hirak/prestissimo

WORKDIR /app