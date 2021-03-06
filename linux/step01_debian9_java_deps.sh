#!/bin/bash
JAVAVER=${JAVAVER:-openjdk11}

# install java
if [ "$JAVAVER" = "openjdk1.8" ]; then
    apt-get -y install openjdk-8-jre-headless
elif [ "$JAVAVER" = "openjdk1.8-devel" ]; then
   apt-get -y install openjdk-8-jdk
elif [ "$JAVAVER" = "openjdk11" ]; then
    #start-recommended
    echo "deb http://ftp.debian.org/debian stretch-backports main" | tee /etc/apt/sources.list.d/linuxuprising-java.list
    apt-get update -q
    apt-get -t stretch-backports -y install openjdk-11-jre-headless
    #end-recommended
elif [ "$JAVAVER" = "openjdk11-devel" ]; then
    echo "deb http://ftp.debian.org/debian stretch-backports main" | tee /etc/apt/sources.list.d/linuxuprising-java.list
    apt-get update -q
    apt-get -t stretch-backports -y install openjdk-11-jdk
fi
