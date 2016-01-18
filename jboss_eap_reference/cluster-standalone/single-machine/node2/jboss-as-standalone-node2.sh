#!/usr/bin/env bash

JBOSS_CONF="/opt/rh/jboss-eap-6.4/bin/init.d/jboss-as.conf"
JBOSS_HOME=/opt/rh/jboss-eap-6.4
JBOSS_PIDFILE=/var/run/jboss-eap-6.4/standalone-node-2/jboss-as-standalone.pid
JBOSS_CONSOLE_LOG=/opt/rh/jboss-eap-6.4/standalone-node-2/console.log
JBOSS_CONFIG=standalone-ha.xml
JBOSS_SCRIPT="$JBOSS_HOME/bin/standalone.sh -b 10.20.1.31 -u 230.0.0.4 -Djboss.server.base.dir=$JBOSS_HOME/standalone-node-2 -Djboss.socket.binding.port-offset=200 -Djboss.node.name=standalone-node-2"

# chkconfig: 2345 85 15
# description: jboss-eap-6.4-node-2
# processname: standalone-node-2.sh[