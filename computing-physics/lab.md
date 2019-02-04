2. Hands-on Build with VMs


    Starting state:
    - GPFS packages installed
    - Binaries referenced by your path
    - Each VM has one OS disk and one free disk that we'll use as an NSD device
    - Cluster names:


        c2  Brian
        c3  Peter
        c4  John
        c5  Haichuan
        c6  Stewart
        c7  Christine
        c8  Jeff


    Let's begin!


    Login to your first node:
        ssh <nodename>


            User:       root
            Password:  "heavy ice 46"  (no quotes)


        # Unique entries for your cluster
        n1=
        n2=
        n3=
        clusterNumber=
       
 clusterName=cluster${clusterNumber}




    Take a look at your nodes:


        for node in $n1 $n2 $n3; do
            ssh $node uname -n
            done




    Begin creating your cluster:


        # nodeslist file
        echo "$n1:quorum-manager"   > /root/nodeslist
        echo "$n2:quorum-manager"  >> /root/nodeslist
        echo "$n3:quorum"          >> /root/nodeslist




        # cluster create command
        echo mmcrcluster -N /root/nodeslist --ccr-disable -p $n1 -s $n2 -r /usr/bin/ssh -R /usr/bin/scp -C $clusterName


        # assign license types
        echo mmchlicense server --accept -N $n1,$n2,$n3


        # have a look
        mmlscluster


        # start gpfs services on your cluster
        echo mmstartup -N $n1,$n2,$n3


        # check the status
        mmgetstate -a
        tail -F /var/adm/ras/mmfs.log.latest


        # And I'm a big fan of "watch".  Try this:
        watch mmgetstate -a


        # Once all nodes indicate they're "active", you're good to go




    Now that your cluster is up and running, let's create a filesystem:


        # first create an "NSD Stanza File"
        echo "
        %nsd:
            device=/dev/vdb
            nsd=nsd1
            servers=$n1
            usage=dataAndMetadata
            failureGroup=-1
        %nsd:
            device=/dev/vdb
            nsd=nsd2
            servers=$n2
            usage=dataAndMetadata
            failureGroup=-1
        %nsd:
            device=/dev/vdb
            nsd=nsd3
            servers=$n3
            usage=dataAndMetadata
            failureGroup=-1
        " > /root/NSD_Stanza_File


        # Now let's initialize the NSD devices according to that file
        mmcrnsd -F /root/NSD_Stanza_File


        # Take a look at your new NSD devices
        mmlsnsd


        # Now let's create a filesystem on those NSD devices
        fsname=fs$clusterNumber
        mmcrfs $fsname -F /root/NSD_Stanza_File -k nfs4 -m 2


        # Take a look at your fresh fs
        mmlsfs $fsname


        # Mount it (notice it has a default mount point specified in the mmlsfs output)
        mmmount $fsname                     # this mounts it on node 1 only
        ssh $n2 mount | grep 'type gpfs'    # and here you can see it is not on node 2 yet


        # Mount on other nodes
        mmmount $fsname -a                  # "-a" means "all nodes" with many commands


        # Create a file on the filesystem
        cp /etc/hosts /gpfs/$fsname/monkey-eggs.txt


        for node in $n1 $n2 $n3; do
            ssh $node ls -l /gpfs/$fsname/monkey-eggs.txt
            done


        # Concept of disks (that are NSDs) that belong to a filesystem
        mmlsdisk $fsname


        # Crazy -- let's delete the NSD device from the live filesystem on this node
        mmdeldisk $fsname nsd1


        # Is the filesystem still there?



 parted /dev/vdb p
Error: /dev/vdb: unrecognised disk label
Model: Virtio Block Device (virtblk)                                      
Disk /dev/vdb: 10.7GB
Sector size (logical/physical): 512B/512B
Partition Table: unknown
Disk Flags: 

mmdelnsd 'nsd1;nsd2;nsd3'


dw
ctrl v then x visual block and delet

[root@c5n1 ~]# rpm -qa|grep -i gpfs
gpfs.gplbin-3.10.0-957.1.3.el7.x86_64-4.2.3-9.x86_64
gpfs.ext-4.2.3-9.x86_64
gpfs.gpl-4.2.3-9.noarch
gpfs.adv-4.2.3-9.x86_64
gpfs.gskit-8.0.50-86.x86_64
gpfs.msg.en_US-4.2.3-9.noarch
gpfs.crypto-4.2.3-9.x86_64
gpfs.docs-4.2.3-9.noarch
gpfs.base-4.2.3-9.x86_64
gpfs.license.adv-4.2.3-9.x86_64
[root@c5n1 ~]# 


16MB block size is best for small file io
subblock

[root@c5n1 ~]# mmdeldisk $fsname nsd1


Deleting disks ...
Scanning file system metadata, phase 1 ... 
Scan completed successfully.
Scanning file system metadata, phase 2 ... 
Scan completed successfully.
Scanning file system metadata, phase 3 ... 
Scan completed successfully.
Scanning file system metadata, phase 4 ... 
Scan completed successfully.
Scanning user file metadata ...
 100.00 % complete on Tue Jan 22 13:12:31 2019  (     65856 inodes with total        543 MB data processed)
Scan completed successfully.
Checking Allocation Map for storage pool system
tsdeldisk completed.
mmdeldisk: Propagating the cluster configuration data to all
  affected nodes.  This is an asynchronous process.
[root@c5n1 ~]# 
[root@c5n1 ~]# 
[root@c5n1 ~]# mmdeldisk $fsname nsd1
mmdeldisk: nsd1 not found in file system fs5
mmdeldisk: Command failed. Examine previous error messages to determine cause.
[root@c5n1 ~]# 

mmfsadm dump config

nvme - non-volatile memeory express


mmchdisk fs5 suspend -d nsd2
recommended before deleting disk - 
mmrestripefs fs5 -N c5n1,c5n2,c5n3 -m/-r
empties disk

mmdf fs2


to add disk back -

[root@c5n1 ~]# mmadddisk fs5 nsd1

The following disks of fs5 will be formatted on node c5n1.kvm.local:
    nsd1: size 10240 MB
Extending Allocation Map
Checking Allocation Map for storage pool system
Completed adding disks to file system fs5.
mmadddisk: Propagating the cluster configuration data to all
  affected nodes.  This is an asynchronous process.
[root@c5n1 ~]# mmlsdisk fs5
disk         driver   sector     failure holds    holds                            storage
name         type       size       group metadata data  status        availability pool
------------ -------- ------ ----------- -------- ----- ------------- ------------ ------------
nsd1         nsd         512          -1 Yes      Yes   ready         up           system       
nsd2         nsd         512          -1 Yes      Yes   ready         up           system       
nsd3         nsd         512          -1 Yes      Yes   ready         up           system       
[root@c5n1 ~]

mmchfs to increase inodes limit:


mmchfs fs5 --inode-limit 1000000
