#!/bin/bash

if [ "$1" = "services" ];then
    cp -rf overlay/services/smali/com/android/server/* $2/smali/com/android/server/
fi
