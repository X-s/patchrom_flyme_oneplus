#!/bin/bash

SEPOLICY_INJECT=$1
SEPOLICY=$2

# Fix the issue about the "git" does not manage the empty folders.
needCreatedDirs=("sys" "firmware" "config" "dev" "system" "persist" "cache" "proc" "storage" "data" "acct" "bt_firmware" "oem" "mnt" "dsp")

RAMDISK_DIR=`dirname $SEPOLICY`
for dir_name in "${!needCreatedDirs[@]}"
do
    mkdir -p $RAMDISK_DIR/${needCreatedDirs[$dir_name]}
done
