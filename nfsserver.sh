#!/bin/sh
yum install -y nfs-utils
mkdir -p /home/exports
chown nfsnobody:nfsnobody /home/exports
echo "/home/exports 192.168.33.0/24(rw,no_root_squash)" >> /etc/exports
service rpcbind start
service nfs start
