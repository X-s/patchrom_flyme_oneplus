#/bin/bash

TARGET_DIR=out/merged_target_files

cp -f firmware/BTFM.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/hyp.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/logo.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/pmic.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/sdi.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -f firmware/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/

rm -rf $TARGET_DIR/SYSTEM/framework/hydrongen-framework-res.apk

# mv ro.sf.lcd_density > persist.xsdensity
sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib/libsurfaceflinger.so
sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib64/libsurfaceflinger.so
