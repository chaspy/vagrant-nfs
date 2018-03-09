# vagrant-nfs

## usage

```
# vagrant up
# vagrant ssh nc # to client
# vagrant ssh ns # to server
```

sharing

```
[vagrant@nfs-cli ~]$ df -h
Filesystem            Size  Used Avail Use% Mounted on
/dev/mapper/VolGroup-lv_root
                       38G  721M   36G   2% /
tmpfs                 246M     0  246M   0% /dev/shm
/dev/sda1             477M   30M  423M   7% /boot
vagrant               233G  205G   29G  88% /vagrant
192.168.33.101:/home/exports
                       38G  721M   36G   2% /var/exports
```
