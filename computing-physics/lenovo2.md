token only needed for write, not read

striping rights
HA access

loss of volume - data not avaible, fs still up
tiering - archival tier
ltfs - linear tape fs,tape as block device

metadata distributed across fs
3 way replication of metadata - lenovo 2 way

-M max data replicas 3
-m min replicas 

disk store - fault-tolerant
failure group is at nsd level
2nd replica shouldn't have same failure group

-1 has no points of failure with any other device
