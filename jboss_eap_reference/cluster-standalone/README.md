JBoss in standalone cluster

[http://middlewaremagic.com/jboss/?p=1952](http://middlewaremagic.com/jboss/?p=1952)

## Running multiple instances on one machine (init.d)
 
[http://middlewaremagic.com/jbcurloss/?p=2294](http://middlewaremagic.com/jboss/?p=2294)

## Single Machine

Logs

    /opt/rh/jboss-eap-6.4/standalone-node-1/log
    /opt/rh/jboss-eap-6.4/standalone-node-2/log

#### Demo Application

- Node 1 : [http://singlemachinecluster.vagrant.local:8180/cluster-demo/](http://singlemachinecluster.vagrant.local:8180/cluster-demo/)
- Node 2 : [http://singlemachinecluster.vagrant.local:8280/cluster-demo/](http://singlemachinecluster.vagrant.local:8280/cluster-demo/)

#### Management Pages

 - Node 1 : [http://singlemachinecluster.vagrant.local:10090/console](http://singlemachinecluster.vagrant.local:10090/console)
 - Node 2 : [http://singlemachinecluster.vagrant.local:10190/console](http://singlemachinecluster.vagrant.local:10190/console)
 - user: admin
 - password: password1!