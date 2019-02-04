ces supports nfs, cifs



nfs kernel server, efficient, getting stuck easily, 
ganesha - user space, can kill, not io efficient

IBM spectrum scale 4.2.3 problem determination guide


https://www.oreilly.com/library/view/ibm-spectrum-scale/9780738440736/

mmces

mmdumpconfig 

mmlsnsd
o

http://files.gpfsug.org/presentations/2017/Manchester/02-2_Object_SwiftHLM_and_Openstack.pdf

https://www.ibm.com/support/knowledgecenter/en/STXKQY_4.2.3/ibmspectrumscale423_welcome.html

https://www.ibm.com/support/knowledgecenter/en/STXKQY_4.2.3/com.ibm.spectrum.scale.v4r23.doc/bl1xx_library_prodoc.htm


mmces node list
mmces service list -N ces
mmces service list -N nfs

mmces state show SMB -N ces

mmces address list

mmces address move -ces-ip 149.15.232.15 -ces-node bldc-ces-3
didn't work

mmlscluster

mmlsconfig

http://www.mellanox.com/pdf/whitepapers/Intro_to_IB_for_End_Users.pdf
verbs and hca

mmchconfig

adminNode central - singly controlled

mmces state show CES -N CES

https://www.csm.ornl.gov/workshops/openshmem2014/documents/presentations_and_tutorials/Tutorials/Verbs%20programming%20tutorial-final.pdf

https://downloads.openfabrics.org/ofv/OFV-slides-mar10-verbs_extensions.pdf


host geode2.uits.iu.edu|awk {'print $NF'}


$ for i in `host geode2.uits.iu.edu|awk '{print $NF}'`
$ for i in $(host geode2.uits.iu.edu|awk '{print $NF}')
> do
> host $i
> done


mmces events list -N CES

mmces show network

mmlsvdisk

mmnfs 
mmsmb export list -N ces

1. health gui for monitoring in problem determin guide

mmsmb exportacl getid sjhoward

mmsmb config list
mmsmb export add SMBExport /geode/lenovo

auto and desire encryption
man mmsmb - 
separage bl and in
service ip to bigred2plus
mmsmb
mmnfs
need to be a node which has fs


gui, disk bad -

1. gss code
rpm -qa|grep gss

mmlscomp

cpufreq for linux power consumption

mmlsvdisk
mmlspdisk all --not-ok
mmlspdisk all --replace [show disk needs replace]

mmchdisk ictc-dss-1 --pdisl disk_name --identify on

https://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.conv.hx3500.qsg.doc%2FLenovo_documentation.html

10.5.1.50 xcat-bloom

mmsysmon.py
mmsysmonc
mmsysmoncontrol


mmlscallback

filesystem manager - per fs
cluster manager

page 46 of install guide

daemon - page 42

mmexpelnode - 

mmlsmgr - mgr

mmlscluster

mmchmgr geoge bldc-dss-1
mmchmgr -c bldc-dss-3 - need to be quorum node

perfmon
quorum-perfmon




mmshutdwon -N itce-dss-4

mmstartup -N node
mmstartup -a

systemctl status gpfs

mmdelnode

/var/mmfsd/mmsdrfs has all critical info about cluster

--ccr-disable mmcrcluster

/var/mmfs/gen/mmsdrfs - SQL statements shows there

ccrEnabled

mmlsconfig 

mmchconfig

db?

posgres for GUI
