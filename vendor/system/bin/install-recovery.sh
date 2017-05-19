#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:17413420:a821e5d51c8fc30ad8548311e40ac74c46ad251e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:12379432:4533f6d704edddaffbfb252235031ab51a25dbbf EMMC:/dev/block/bootdevice/by-name/recovery a821e5d51c8fc30ad8548311e40ac74c46ad251e 17413420 4533f6d704edddaffbfb252235031ab51a25dbbf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
