# Jboss EAP Reference Architecture

[https://www.redhat.com/en/resources/jboss-eap-6-clustering](https://www.redhat.com/en/resources/jboss-eap-6-clustering)

This vagrant image attempts to build the reference architecture of nodes and http load balancing as explained in the document.

This reference architecture consists of two EAP 6 CLUSTERS, each containing three nodes. The two clusters provide active/passive redundancy in an effort to approach a ZERO-DOWNTIME ARCHITECTURE. Having two distinct and separate clusters allows for upgrades and other types of maintenance, without requiring an operational maintenance window.

Two instances of Apache HTTP Server are also deployed, each to front-end one of the EAP clusters for incoming HTTP requests. A single instance of PostgreSQL database is used for JPA persistence in the back-end.

At any given time, the active setup simply includes an HTTP Server that redirects to a logical EAP 6 Application Server for all functionality, which in turn uses the PostgreSQL database instance for its persistence.


## Prerequisites

- [configurations from the document](https://access.redhat.com/site/node/524633/40/0)
- 


    mvn install:install-file -Dfile=/Users/swinchester/DownloadsToKeep/jboss-eap-6.4.0.zip -DgroupId=org.jboss.eap -DartifactId=jboss-eap -Dversion=6.4.0 -Dpackaging=zip
    
    mvn install:install-file -Dfile=/Users/swinchester/DownloadsToKeep/jboss-eap-native-webserver-connectors-6.4.0-RHEL7-x86_64.zip -DgroupId=org.jboss.eap -DartifactId=native-webserver-connectors -Dversion=6.4.0-RHEL7-x86_64 -Dpackaging=zip
    
    mvn install:install-file -Dfile=/Users/swinchester/DownloadsToKeep/jboss-ews-httpd-2.1.0-RHEL7-x86_64.zip -DgroupId=org.jboss.eap -DartifactId=jboss-ews-httpd -Dversion=2.1.0-RHEL7-x86_64 -Dpackaging=zip