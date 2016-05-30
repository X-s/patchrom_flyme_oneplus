#/bin/bash

TARGET_DIR=out/merged_target_files

cp -f other/BTFM.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/hyp.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/logo.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/pmic.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/sdi.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f other/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/
