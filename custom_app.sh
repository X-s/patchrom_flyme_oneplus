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
    echo ">>>> in custom_app for $apkBaseName to fix cdma phone times"
    sed -i "s#    invoke-direct {p0, v5}, Lcom/android/services/telephony/TelephonyConnection;->getCallState(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Call\$State;#    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call\$State;#" $2/smali/com/android/services/telephony/TelephonyConnection.smali
fi

if [ "$apkBaseName" = "Settings" ];then
    echo ">>>> in custom_app for $apkBaseName to fix storage info"
    find $2/ -name "*.smali" | xargs sed -i 's#sys/block/sdc/size#sys/block/sda/size#g'
    find $2/ -name "*.smali" | xargs sed -i 's#sys/block/mmcblk0/size#sys/block/sda/size#g'
fi
