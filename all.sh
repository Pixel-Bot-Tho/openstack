#!/bin/bash
sudo yum install git -y
git clone https://github.com/volomi/openstack.git -y
cd openstack
chmod 777 *
pre-install.sh -y 
ipconfigs.sh -y
mysql.sh -y

sudo yum install -y openstack-packstack
sudo packstack --gen-answer-file /root/answers.txt
vi /root/answers.txt
sudo packstack --answer-file /root/answers.txt
