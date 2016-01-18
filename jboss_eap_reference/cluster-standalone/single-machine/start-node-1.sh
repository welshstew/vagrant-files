#!/usr/bin/env bash

/opt/rh/jboss-eap-6.4/bin/standalone.sh -c standalone-ha.xml -b 10.20.1.31 -u 230.0.0.4 -Djboss.server.base.dir=/opt/rh/jboss-eap-6.4/standalone-node-1/ -Djboss.node.name=node1 -Djboss.socket.binding.port-offset=100