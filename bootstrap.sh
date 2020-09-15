#!/usr/bin/env bash

cp /vagrant/hosts /etc/hosts
cp /vagrant/resolv.conf /etc/resolv.conf
yum install ntp -y
service ntpd start
#service iptables stop
mkdir -p /root/.ssh; chmod 600 /root/.ssh; cp /home/vagrant/.ssh/authorized_keys /root/.ssh/

#Again, stopping iptables
# /etc/init.d/iptables stop

# Increasing swap space
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1024k
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile       none    swap    sw      0       0" >> /etc/fstab

sudo cp /vagrant/insecure_private_key /root/ec2-keypair
sudo chmod 600 /root/ec2-keypair

sudo sysctl vm.swappiness=5

sudo sh -c "echo 'vm.swappiness=5' >> /etc/sysctl.conf"

sudo sh -c "echo never > /sys/kernel/mm/transparent_hugepage/defrag"
sudo sh -c "echo 'echo never > /sys/kernel/mm/transparent_hugepage/defrag' >> /etc/rc.local"

sudo sh -c "echo never > /sys/kernel/mm/transparent_hugepage/enabled"
sudo sh -c "echo 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' >> /etc/rc.local"


if [[ $(hostname) == "c7401.cdh.testlab" ]]
then
  wget -q -O /tmp/cloudera-manager-installer.bin https://archive.cloudera.com/cm6/6.2.0/cloudera-manager-installer.bin
  chmod u+x /tmp/cloudera-manager-installer.bin
  # sudo /tmp/cloudera-manager-installer.bin --i-agree-to-all-licenses --noprompt --noreadme --nooptions
fi