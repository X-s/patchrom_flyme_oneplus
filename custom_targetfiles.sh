#/bin/bash

TARGET_DIR=out/merged_target_files

rm -rf $TARGET_DIR/SYSTEM/framework/hydrogen-framework-res.apk

sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib/libsurfaceflinger.so
sed -i 's#qemu.sf.lcd_density#persist.sys.density#g' $TARGET_DIR/SYSTEM/lib64/libsurfaceflinger.so
