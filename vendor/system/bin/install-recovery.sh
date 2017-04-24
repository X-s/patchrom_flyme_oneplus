#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22775084:cc3ef1322278a9d92f77d4cba7a24de643ba157e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:14972200:9d5c3750106b060fb56f0441e4499635764053d3 EMMC:/dev/block/bootdevice/by-name/recovery cc3ef1322278a9d92f77d4cba7a24de643ba157e 22775084 9d5c3750106b060fb56f0441e4499635764053d3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
