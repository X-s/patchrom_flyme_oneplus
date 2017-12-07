#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28222764:a4dd5cd316947ac197676b1c93c19f155f14a42d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:18375976:770ac4c2a73978c7d55d691b1145d067277a6e30 EMMC:/dev/block/bootdevice/by-name/recovery a4dd5cd316947ac197676b1c93c19f155f14a42d 28222764 770ac4c2a73978c7d55d691b1145d067277a6e30:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
