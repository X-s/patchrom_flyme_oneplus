#/bin/bash

TARGET_DIR=out/merged_target_files

cp -f overlay/firmware-update/BTFM.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/hyp.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/logo.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/pmic.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/sdi.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/

rm -rf $TARGET_DIR/SYSTEM/framework/hydrongen-framework-res.apk

# mv ro.sf.lcd_density > persist.xsdensity
sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib/libsurfaceflinger.so
sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib64/libsurfaceflinger.so
