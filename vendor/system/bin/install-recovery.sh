#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15839232:6339919da7af83b1ff30cc35e0b4ef402e9e8400; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:11395072:a02856c70c99f5d278fd05b62d2b8b6e52c650fd EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6339919da7af83b1ff30cc35e0b4ef402e9e8400 15839232 a02856c70c99f5d278fd05b62d2b8b6e52c650fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
