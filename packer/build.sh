#!/bin/bash
cd /tmp/hello-world-springboot-application
./gradlew build
sudo mkdir -p /var/hello
sudo mv build/libs/hello-world-0.1.0.jar /var/hello/hello-world.jar
