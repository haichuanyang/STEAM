major, minor
driver, instance

block device /dev/sdc

device driver handles protocol, scsi/ide/fc
filesystem driver xfs handels interation with device

gpfs device - 
ls -l /dev/gpfs1
major, minor
scsi/ide/tcp/rdma
driver - gpfs, instance - filesystem name
responding as device driver, gpfs handles acess via multiple protocols

a filesystem  driver handles interations with devices
volumes - individual device, raid array

cluster - filesystems, volumes
NSD - network shared device
FS1  - nsd1, nsd2
/dev/fs1

cluster1
node1 /dev/vda /dev/vdb{nsd1}
node2 /dev/vda /dev/vdb{nsd2}

nsd servers don't need to have fs mounted

mount with label - signature, 

mount process - 
node1 - mount self device vscsi - node 1, nsd2 on node2

xfs - locally presented by block device protocol vscsi

gpfs - major 252, gpfs driver in kernel, what nsds in fs1? nsd1/nsd2 map  
minor 32 - 
signature is local - locally, vscsi local
if not local, look for nsd servers, tcp/ip then vscsi

file locking nfs - server knows everything; gpfs - shared info

major,minor - gpfs driver - gpfs daemon mmfsd - communicates with rest of 
cluster
list of NSD devices for FS,(minor # 32), nsd1 node1; nsd2 on node2, node3 (mmlsfs, mmlsnsd)
collect devices and present them as one filesystem

what is node3 has access to nsd2? multi-homed device
nsd3, node3, node2 for balancing effect, 

block size 4MB; 8 MB breaks down to 2 pieces node3 and node2; parallelization of IO
token manager service
config file - filesystem service


spectrum scale - not elastic storage
distributed storage server - gpfs, a pair of servers with jbods
rpc is for nfs; not in gpfs
what is db for metadata?
where does metadata live? not a separate server like luster
IB - client only in the rack

suspending nsd volumes - read only, no writes
mmrestripe, rm nsd devices from fs
petabytes of data
token/cluster manager service

xfs single node fs
