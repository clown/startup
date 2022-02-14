#!/bin/sh

sudo yum -y install centos-release-scl-rh centos-release-scl
sudo yum --enablerepo=centos-sclo-rh -y install rh-ruby27 rh-ruby27-ruby-devel
sudo bash -c "echo 'source scl_source enable rh-ruby27' > /etc/profile.d/rh-ruby27.sh"
sudo bach /etc/profile.d/rh-ruby27.sh