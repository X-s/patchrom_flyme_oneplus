#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31966508:3505f65d4f4611e795d8bf725e65516608e47104; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:21579048:a849d57ec4ee86939b17cf12079c4db76845d595 EMMC:/dev/block/bootdevice/by-name/recovery 3505f65d4f4611e795d8bf725e65516608e47104 31966508 a849d57ec4ee86939b17cf12079c4db76845d595:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
