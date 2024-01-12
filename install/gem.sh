#!/bin/sh

apt -y install rubygems libffi-dev
gem update --system -N
gem install rake -N
gem install compass -N
gem --version
