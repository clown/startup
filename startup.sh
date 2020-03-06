#!/bin/sh

cd `dirname $0`
yum update -y

source install/docker.sh
source install/ruby.sh
source install/gem.sh
