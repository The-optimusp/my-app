#!/bin/bash

echo "in provision script"

## Install docker on OS

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable docker
systemctl start docker

# groupadd docker
usermod -aG docker $(whoami)
usermod -aG docker vagrant
yum update -y

## Install Docker Compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

## Intall python3 and pip
yum install -y epel-release
yum install -y python36
#yum install -y python-pip
#pip install --upgrade pip

## web & db containers

mkdir -p /db_data/test
cd /vagrant
/usr/local/bin/docker-compose up -d
