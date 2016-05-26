#!/bin/bash

if [ "$1" = "services" ];then
    cp -rf overlay/services/smali/com/android/server/* $2/smali/com/android/server/
fi

if [ "$1" = "framework" ];then
    cp -rf overlay/framework/smali/android/* $2/smali/android/
fi
