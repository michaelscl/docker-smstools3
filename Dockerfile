FROM php:7-apache-bullseye

COPY src/sms.php    		/usr/lib/cgi-bin/sms.php
COPY src/startup.sh		/tmp/startup.sh

RUN    apt-get update					\
    && apt-get upgrade -y 				\
    && apt-get install mc smstools systemctl -y		\
    && apt-get clean					\
    && a2enmod cgi                             		\
    && usermod -a -G smsd www-data			\
    && chmod a+x /tmp/startup.sh

ENTRYPOINT /tmp/startup.sh