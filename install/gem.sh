#!/bin/sh

source scl_source enable rh-ruby27
gem update --system -N
gem install rake -N
gem install compass -N
