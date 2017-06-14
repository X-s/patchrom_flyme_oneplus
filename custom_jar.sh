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
    echo ">>>> in custom_jar $jarBaseName, use base Editor*.smali to replace OnePlus Editor*.smali"
    rm -rf overlay/temp
    mkdir overlay/temp
    cp -rf ../base/framework.jar.out/smali_classes2/android/widget/Editor*.smali overlay/temp/
    idtoname ../base/framework-res/res/values/public.xml overlay/temp/
    rm -rf $tempSmaliDir/smali_classes2/android/widget/Editor*.smali
    cp -rf overlay/temp/Editor*.smali $tempSmaliDir/smali_classes2/android/widget/
    nametoid framework-res/res/values/public.xml $tempSmaliDir/smali_classes2/android/widget/
    rm -rf overlay/temp
fi
