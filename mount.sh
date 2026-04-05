mount --types proc $LINUX/proc
mount --rbind /sys $LINUX/sys
mount --make-rslave $LINUX/sys
mount --rbind /dev $LINUX/dev
mount --make-rslave $LINUX/dev
mount --bind /run $LINUX/run
mount --make-slave $LINUX/run
