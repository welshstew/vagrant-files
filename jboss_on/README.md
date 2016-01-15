jboss_on 
--------

These projects require that you download the JON server, agents, etc.

	mvn install:install-file -Dfile=/Users/swinchester/Downloads/jon-server.zip -DgroupId=org.jboss.on -DartifactId=jon-server -Dversion=3.3.0.GA -Dpackaging=zip
	mvn install:install-file -Dfile=/Users/swinchester/Downloads/jon-server.zip -DgroupId=org.jboss.on -DartifactId=jon-server-patch -Dversion=3.3-update-04 -Dpackaging=zip
	mvn install:install-file -Dfile=/Users/swinchester/Downloads/jon-server.zip -DgroupId=org.jboss.on -DartifactId=patch-common-collections -Dversion=BZ-1281514 -Dpackaging=zip
	mvn install:install-file -Dfile=/Users/swinchester/Downloads/jon-server.zip -DgroupId=org.jboss.on -DartifactId=jon-plugin-pack-fuse -Dversion=3.3.0.GA -Dpackaging=zip
	mvn install:install-file -Dfile=/Users/swinchester/Downloads/jon-server.zip -DgroupId=org.jboss.on -DartifactId=jon-plugin-pack-fuse-patch -Dversion=3.3.0.GA-update-03 -Dpackaging=zip
