#!/system/bin/sh
QMESA_64 -stress -errorCheck TRUE -secs 86400 -startSize 2KB -endSize 512MB -numThreads 2 > /sdcard/qmesa.log