#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

function applyPatch () {
    app_name=$1
    app_dir=$2

    for patch in `find $app_name -name "*.patch"`
    do
        smali_file=`cat $patch | grep "^---" | sed "s@$app_name\/@$app_name#@" | cut -d"#" -f2 | awk -F "\t" '{print $1}'`
        patch $app_dir/$smali_file $patch

            for rej in `find $app_dir -name "*.rej"`
            do
                echo "Patch $patch failed!!"
                exit 1
            done
    done
}

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>>> in custom_app for $apkBaseName to fix phone fc"
        applyPatch $apkBaseName $tempSmaliDir
fi

if [ "$apkBaseName" = "ConnectivitySettings" ];then
        echo ">>>> in custom_app for $apkBaseName to fix apn save fc"
        applyPatch $apkBaseName $tempSmaliDir
fi
