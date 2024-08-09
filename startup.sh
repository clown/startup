#!/bin/bash

cd `dirname $0`
apt -y update
apt -yV upgrade

# settings
cp -pf etc/sysctl.conf /etc/sysctl.conf
sysctl -p

cp -pf etc/sshd_config /etc/ssh/sshd_config
systemctl restart ssh

# others
source install/fail2ban.sh
source install/tools.sh
source install/docker.sh
source install/ruby.sh
