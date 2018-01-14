#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23385388:12a5a6132e8290d759120156393853c03d32544b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:15172904:ced942bfb187fea872a30380a482dc0c04be110d EMMC:/dev/block/bootdevice/by-name/recovery 12a5a6132e8290d759120156393853c03d32544b 23385388 ced942bfb187fea872a30380a482dc0c04be110d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
