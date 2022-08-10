# apt-get install -y default-jdk
# apt-get install -y maven
export JAVA_HOME=/usr/lib/jvm/default-java
echo "export JAVA_HOME=/usr/lib/jvm/default-java" >> ~/.bashrc
source ~/.bashrc
touch /tmp/finished
