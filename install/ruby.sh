#!/bin/sh

yum install -y git bzip2 openssl-devel readline-devel zlib-devel

git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv
git clone git://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

echo 'export RBENV_ROOT=/usr/local/rbenv' >> /etc/profile
echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile
echo 'eval "$(rbenv init -)"' >> /etc/profile
source /etc/profile

rbenv install 2.7.0
rbenv rehash
rbenv global 2.7.0
