#!/bin/bash

sudo apt install -y default-jdk
sudo apt install -y maven
export JAVA_HOME=/usr/lib/jvm/default-java
echo "export JAVA_HOME=/usr/lib/jvm/default-java" >> ~/.bashrc
source ~/.bashrc
