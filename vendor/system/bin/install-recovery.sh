#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26793220:ad067e5220b6ebf1233818872981d8da2a388c7c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:19741952:cb2e64c5dc6c4bdac84d365dbec9bd946a8c0d4b EMMC:/dev/block/bootdevice/by-name/recovery ad067e5220b6ebf1233818872981d8da2a388c7c 26793220 cb2e64c5dc6c4bdac84d365dbec9bd946a8c0d4b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
