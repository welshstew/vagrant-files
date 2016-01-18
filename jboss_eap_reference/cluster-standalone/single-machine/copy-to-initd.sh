#!/usr/bin/env bash
sudo mv /vagrant/node1/jboss-as-standalone-node1.sh /etc/init.d/jboss-as-standalone-node1
sudo mv /vagrant/node2/jboss-as-standalone-node2.sh /etc/init.d/jboss-as-standalone-node2
sudo chmod +x /etc/init.d/jboss-as-standalone-node1
sudo chmod +x /etc/init.d/jboss-as-standalone-node2
sudo chkconfig --add jbosseap6-node1
sudo chkconfig --add jbosseap6-node2
sudo service jbosseap6-node1 start
sudo service jbosseap6-node2 start