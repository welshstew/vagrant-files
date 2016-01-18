#!/bin/sh
HTTPD_DIR=/opt/rh/jboss-ews-2.1/httpd
$HTTPD_DIR/sbin/httpd -f $HTTPD_DIR/conf/cluster$1.conf -E $HTTPD_DIR/logs/httpd$1.log -k $2
