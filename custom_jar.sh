#!/bin/bash

if [ "$1" = "framework" ];then
    mv $2/smali/android/speech/ $2/smali_classes2/android/speech/
    mv $2/smali/android/accounts/ $2/smali_classes2/android/accounts/
    mv $2/smali/android/hardware/ $2/smali_classes2/android/hardware/
    mv $2/smali/android/printservice/ $2/smali_classes2/android/printservice/
fi
