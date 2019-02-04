[root@c5n1 ~]# mmcrcluster -N /root/nodeslist --ccr-disable -p c5n1 -s c5n2 -r /usr/bin/ssh -R /usr/bin/scp -C cluster5
mmcrcluster: Performing preliminary node verification ...
mmcrcluster: Processing quorum and other critical nodes ...
mmcrcluster: Finalizing the cluster data structures ...

mmcrcluster: Command successfully completed
mmcrcluster: Warning: Not all nodes have proper GPFS license designations.
    Use the mmchlicense command to designate licenses as needed.
mmcrcluster: Propagating the cluster configuration data to all
  affected nodes.  This is an asynchronous process.
[roo


mmgetstate -a

mmshutdown -a
mmstartup -a
