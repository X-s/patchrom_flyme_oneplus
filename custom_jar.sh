#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

moveDirs=("android/accounts" "android/hardware" "android/printservice" "android/speech")

if [ "$jarBaseName" = "framework" ];then
    echo ">>>> in custom_jar $jarBaseName to move some smalis"
    for dir_name in "${!moveDirs[@]}"
    do
        mv -v $tempSmaliDir/smali/${moveDirs[$dir_name]} $tempSmaliDir/smali_classes2/${moveDirs[$dir_name]}
    done
fi

if [ "$jarBaseName" = "services" ];then
    echo ">>>> in custom_jar $jarBaseName to replace vibrate in silent mode with flyme key"
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/android/server/notification/NotificationManagerService\$SettingsObserver.smali
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/android/server/notification/ZenModeHelper.smali
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/oneplus/threekey/ThreeKeyAudioPolicy\$SettingsObserver.smali
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/oneplus/threekey/ThreeKeyAudioPolicy.smali
fi
