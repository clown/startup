#!/bin/sh

yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum makecache fast
yum install -y docker-ce docker-ce-cli containerd.io

systemctl start docker
systemctl enable docker
