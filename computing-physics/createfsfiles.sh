#========================================================================
# createfsfiles ksh
# ======================================================================== 

#!/bin/ksh
if [ $# -ne 1 ] then
echo Usage: $0 fs echo
exit 1
fi
fs=$1
fs_stanzas="$fs"_stanzas
rm $fs.backupconfig $fs.queryconfig
echo "=========================================="
echo "createfsfiles: Creating filesystem \"$fs\" datafiles for image restore" 
echo "=========================================="
echo "mmbackupconfig $fs -o $fs.backupconfig"
mmbackupconfig $fs -o $fs.backupconfig 

if [ $? -ne 0 ]
then
echo "mmbackupconfig returned non-zero rc=$?"
exit 1 
fi
echo "mmbackupconfig returned $?"
echo "mmrestoreconfig $fs -i $fs.backupconfig -F $fs.queryconfig"
mmrestoreconfig $fs -i $fs.backupconfig -F $fs.queryconfig 
if [ $? -ne 0 ]
then
echo "mmrestoreconfig returned non-zero rc=$?"
exit 1 
fi
echo "mmrestoreconfig returned $?"
echo "=========================================="

cat $fs.queryconfig | sed -e "s/^# mmcrfs/mmcrfs/g;s/FS_NAME/$fs/g;s/NSD_DISKS/-F $fs_stanzas/g" > mmcrfs_$fs

cat $fs.queryconfig | sed -e "s/^#/ /g;s/mmcrfs/#mmcrfs/g;s/When/#When/g;s/enforcement/#enforcement/g;s/If/#If/g" > $fs_stanzas

echo "chmod 777 $fs_stanzas mmcrfs_$fs" chmod 777 $fs_stanzas mmcrfs_$fs
