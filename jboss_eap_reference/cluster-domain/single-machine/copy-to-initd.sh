#!/usr/bin/env bash
sudo cp /vagrant/etc/sysctl.d/jgroups.conf /etc/sysctl.d/jgroups.conf
sudo sysctl -p
sudo cp /vagrant/node1/jboss-as-domain-node.sh /etc/init.d/jboss-as-domain-node
sudo chmod +x /etc/init.d/jboss-as-domain-node
sudo chkconfig --add jboss-as-domain-node
sudo service jboss-as-domain-node start