#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32134444:899764291c255f62dccc8075afdc97f7a4756342; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:21746984:021e81ddd3cc3664c4d1271943d57f89071bf24c EMMC:/dev/block/bootdevice/by-name/recovery 899764291c255f62dccc8075afdc97f7a4756342 32134444 021e81ddd3cc3664c4d1271943d57f89071bf24c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
