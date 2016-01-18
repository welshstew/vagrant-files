#!/usr/bin/env bash

# In the reference environment, several ports are used for intra-node communication.
# This includes ports 6667 and 6668 on the web servers' mod-cluster module, being accessed by all three cluster nodes, as well as the
# 5432 Postgres port. Web clients are routed to the web server through ports 81 and 82.
# The EAP cluster nodes also require many different ports for access,
# including 8080 or 8180 for HTTP access, 8009 and 8109 for AJP, 4447 or 4547 for remote EJB calls, 9999 for domain management and so on

#mod-cluster
sudo firewall-cmd --zone=public --add-port=6667-6668/tcp --permanent

#postgres
sudo firewall-cmd --zone=public --add-port=5432/tcp --permanent

#web
sudo firewall-cmd --zone=public --add-port=81-82/tcp --permanent

#http
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --zone=public --add-port=8180/tcp --permanent

#AJP
sudo firewall-cmd --zone=public --add-port=8009/tcp --permanent
sudo firewall-cmd --zone=public --add-port=8109/tcp --permanent

#EJB
sudo firewall-cmd --zone=public --add-port=4447/tcp --permanent
sudo firewall-cmd --zone=public --add-port=4547/tcp --permanent

#domain
sudo firewall-cmd --zone=public --add-port=9999/tcp --permanent

#reload rules
sudo firewall-cmd --reload

unzip /opt/rh/jboss-eap-6.4.0.zip -d /opt/rh/

cp -r /opt/rh/jboss-eap-6.4/standalone /opt/rh/jboss-eap-6.4/standalone-node-1

cp -r /opt/rh/jboss-eap-6.4/standalone /opt/rh/jboss-eap-6.4/standalone-node-2