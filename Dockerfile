FROM php:7-apache-bullseye

RUN apt update \
    && apt upgrade -y \
    && apt install mc smstools -y \
    && apt clean

RUN a2enmod cgi                                 \
    && service apache2 restart              \
    && usermod -a -G smsd www-data

COPY src/sms.php    /usr/lib/cgi-bin/sms.php
    
