#!/bin/bash


TARGET_DIR=out/merged_target_files/

# mv ro.sf.lcd_density > persist.xsdensity
sed -i 's/ro.sf.lcd_density/persist.xsdensity/g' $TARGET_DIR/SYSTEM/lib/libsurfaceflinger.so
sed -i 's/ro.sf.lcd_density/persist.xsdensity/g' $TARGET_DIR/SYSTEM/lib64/libsurfaceflinger.so
