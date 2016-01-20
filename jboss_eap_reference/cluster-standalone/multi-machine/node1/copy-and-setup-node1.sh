#!/usr/bin/env bash
sudo cp /vagrant/etc/sysctl.d/jgroups.conf /etc/sysctl.d/jgroups.conf
sudo sysctl -p
sudo cp /vagrant/node1/jboss-as-standalone-node1.sh /etc/init.d/jboss-as-standalone-node1
sudo chmod +x /etc/init.d/jboss-as-standalone-node1
sudo chkconfig --add jboss-as-standalone-node1
sudo service jboss-as-standalone-node1 start