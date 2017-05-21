#/bin/bash

TARGET_DIR=out/merged_target_files

mv $TARGET_DIR/SYSTEM/framework/flyme-res/flyme-res.apk $TARGET_DIR/SYSTEM/framework/hydrogen-framework-res.apk
rm -rf $TARGET_DIR/SYSTEM/framework/flyme-res
