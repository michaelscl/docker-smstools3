#!/bin/bash

service smstools start	        && \
systemctl start apache2         && \
tail -f /var/log/smstools/smsd.log
