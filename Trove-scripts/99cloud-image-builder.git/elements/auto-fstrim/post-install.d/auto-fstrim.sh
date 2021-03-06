#!/bin/sh
#
# To find which FS support trim, we check that DISC-MAX (discard max bytes)
# is great than zero. Check discard_max_bytes documentation at
# https://www.kernel.org/doc/Documentation/block/queue-sysfs.txt
#
PATH=$PATH:/sbin:/usr/sbin

for fs in $(lsblk -o MOUNTPOINT,DISC-MAX,FSTYPE | grep -E '^/.* [1-9]+.* ' | awk '{print $1}'); do
	fstrim -v "$fs"
done
