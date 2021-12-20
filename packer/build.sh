#!/bin/bash
cd /tmp/hello-world-springboot-application
./gradlew build
sudo mv build/libs/hello-world-0.1.0.jar /hello-world.jar

# Deprovision packer user
/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync
