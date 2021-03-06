#!/sbin/busybox sh
#
# credits to various people

# define config file pathes, file variables and block devices
AGNi_RESETER_CM="/data/media/0/AGNi_reset_oc-uv_on_boot_failure.zip"

SYSTEM_DEVICE="/dev/block/mmcblk0p13"
CACHE_DEVICE="/dev/block/mmcblk0p12"
DATA_DEVICE="/dev/block/mmcblk0p16"

# Now wait for the rom to finish booting up
# (by checking for any android process)
while ! /sbin/busybox pgrep android.process.acore ; do
  /sbin/busybox sleep 1
done

# Configuration app support
. /sbin/boeffla-app.inc

# AGNi reseter
. /sbin/AGNi-reseter.inc

