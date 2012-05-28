#!/bin/sh

echo Starting installing procedure for 1340AB_EVB...

sleep 5

echo Erasing and mounting flash...
flash_eraseall /dev/mtd8
flash_eraseall /dev/mtd9
flash_eraseall /dev/mtd10
flash_eraseall /dev/mtd11

sleep 5

mount -t yaffs2 /dev/mtdblock8 /mnt/root -o inband-tags -o tags-ecc-off

mkdir /mnt/root/system
mkdir /mnt/root/data
mkdir /mnt/root/cache

mount -t yaffs2 /dev/mtdblock9 /mnt/root/data -o inband-tags -o tags-ecc-off
mount -t yaffs2 /dev/mtdblock10 /mnt/root/cache -o inband-tags -o tags-ecc-off
mount -t yaffs2 /dev/mtdblock11 /mnt/root/system -o inband-tags -o tags-ecc-off

echo
echo OK, copying files...
tar zxf /mnt/sda1/vInstaller/rootfs/root.tar.gz -C /mnt/root

sleep 5

umount /mnt/root/cache
umount /mnt/root/data
umount /mnt/root/system

rm -fr /mnt/root/system
rm -fr /mnt/root/data
rm -fr /mnt/root/cache

umount /mnt/root
sync

