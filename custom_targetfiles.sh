#/bin/bash

TARGET_DIR=out/merged_target_files

mv $TARGET_DIR/SYSTEM/framework/flyme-res/flyme-res.apk $TARGET_DIR/SYSTEM/framework/hydrogen-framework-res.apk
rm -rf $TARGET_DIR/SYSTEM/framework/flyme-res

cp -f overlay/firmware-update/adspso.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/BTFM.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/cmnlib.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/cmnlib64.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/devcfg.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/hyp.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/keymaster.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/pmic.elf $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/xbl.elf $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f overlay/firmware-update/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/
