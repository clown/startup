#!/bin/sh

cd `dirname $0`
yum update -y

# settings
cp -pf etc/sysctl.conf /etc/sysctl.conf
sysctl -p

cp -pf etc/sshd_config /etc/ssh/sshd_config
service sshd restart

# others
source install/tools.sh
source install/docker.sh
source install/ruby.sh
source install/gem.sh
