mount --types proc /proc $LINUX/proc
mount --rbind /sys $LINUX/sys
mount --make-rslave $LINUX/sys
mount --rbind /dev $LINUX/dev
mount --make-rslave $LINUX/dev
mount --bind /run $LINUX/run
mount --make-slave $LINUX/run
test -L /dev/shm && rm /dev/shm && mkdir /dev/shm
mount --types tmpfs --options nosuid,nodev,noexec shm /dev/shm
chmod 1777 /dev/shm /run/shm
