#!/usr/bin/env bash
sudo cp /vagrant/node1/jboss-as-standalone-node1.sh /etc/init.d/jboss-as-standalone-node1
sudo cp /vagrant/node2/jboss-as-standalone-node2.sh /etc/init.d/jboss-as-standalone-node2
sudo chmod +x /etc/init.d/jboss-as-standalone-node1
sudo chmod +x /etc/init.d/jboss-as-standalone-node2
sudo chkconfig --add jboss-as-standalone-node1
sudo chkconfig --add jboss-as-standalone-node2
sudo service jboss-as-standalone-node1 start
sudo service jboss-as-standalone-node2 start