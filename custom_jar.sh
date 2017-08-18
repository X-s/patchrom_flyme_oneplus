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
    echo ">>>> in custom_jar $jarBaseName, use base smali to replace OnePlus smali"
    rm -rf overlay/temp
    mkdir -p overlay/temp
    cp -rf ../base/framework.jar.out/smali_classes2/android/widget/Editor*.smali overlay/temp/
    cp -rf ../base/framework.jar.out/smali_classes2/android/widget/AbsListView*.smali overlay/temp/
    idtoname ../base/framework-res/res/values/public.xml overlay/temp/
    rm -rf $tempSmaliDir/smali_classes2/android/widget/Editor*.smali
    rm -rf $tempSmaliDir/smali_classes2/android/widget/AbsListView*.smali
    cp -rf overlay/temp/Editor*.smali $tempSmaliDir/smali_classes2/android/widget/
    cp -rf overlay/temp/AbsListView*.smali $tempSmaliDir/smali_classes2/android/widget/
    nametoid framework-res/res/values/public.xml $tempSmaliDir/smali_classes2/android/widget/
    rm -rf overlay/temp
fi

if [ "$jarBaseName" = "services" ];then
    echo ">>>> in custom_jar $jarBaseName to replace vibrate in silent mode with flyme key"
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/android/server/VibratorService.smali
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/android/server/VibratorService\$OemSettingsObserver.smali
    sed -i 's/oem_vibrate_under_silent/vibrate_when_ringing/g' $tempSmaliDir/smali/com/android/server/notification/NotificationManagerService\$SettingsObserver.smali
fi

