# vagrant-files
- https://www.virtualbox.org/wiki/Downloads
- https://docs.vagrantup.com/v2/getting-started/
- https://blog.engineyard.com/2014/building-a-vagrant-box

## Boxes
- https://github.com/boxcutter
- https://atlas.hashicorp.com/boxes/search

- vagrant box add boxcutter/centos72 --provider virtualbox
- vagrant box add centos/atomic-host --provider virtualbox

## Pre-reqs

### nexus

[Nexus](http://www.sonatype.org/downloads/nexus-latest-bundle.zip) needs to be running on the vagrant host on port 8081, it is required for the fuse install to resolve some artifacts.

### installs

	[Download JBoss Fuse](https://developers.redhat.com/download-manager/file/jboss-fuse-6.2.1.GA-full_zip.zip)

	mvn install:install-file -Dfile=/Users/${USERNAME}/Downloads/jboss-fuse-full-6.2.1.redhat-084.zip -DgroupId=org.jboss.fuse -DartifactId=jboss-fuse-full -Dversion=6.2.1.redhat-084 -Dpackaging=zip

### Plugins
- vagrant plugin install vagrant-hostmanager
- vagrant plugin install vagrant-vbguest
- vagrant plugin install vagrant-cachier
- vagrant plugin install vagrant-triggers
- vagrant plugin install vagrant-auto_network

## Base for new project
- vagrant init garethahealy/centos72_java8; vagrant up --provider virtualbox
