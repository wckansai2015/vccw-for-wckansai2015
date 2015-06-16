#!/usr/bin/env bash

set -ex

yum -y distro-sync
yum -y clean all

rm -f /etc/ssh/ssh_host_*
cd /var/log
find /var/log/ -type f -name '*.log' -exec cp /dev/null {} \;
cp /dev/null /var/log/syslog

yes | cp /dev/null /root/.bash_history
yes | cp /dev/null /home/vagrant/.bash_history

ln -s -f /dev/null /etc/udev/rules.d/70-persistent-net.rules

curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 755 /home/vagrant/.ssh
chmod 644 /home/vagrant/.ssh/authorized_keys

/etc/init.d/vboxadd setup

history -c

shutdown -r now