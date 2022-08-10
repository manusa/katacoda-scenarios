echo "Installing scenario..."
# while [ ! -f /tmp/finished ]; do sleep 1; done
apt-get install -y default-jdk
apt-get install -y maven
source ~/.bashrc
echo DONE
