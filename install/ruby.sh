#!/bin/bash

apt -y install rbenv
apt -y install rubygems libffi-dev
gem install rake -N
gem install compass -N
gem --version
