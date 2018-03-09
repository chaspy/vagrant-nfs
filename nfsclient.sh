#!/bin/sh
yum update -y
yum install -y nfs-utils
mkdir -p /var/exports
mount -t nfs 192.168.33.101:/home/exports /var/exports
