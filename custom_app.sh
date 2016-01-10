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

if [ "$1" = "TelephonyProvider" ];then
    echo ">>> in custom_app for $apkBaseName to adjust the interface "getAllMessagesFromIcc" with "getAllMessagesFromIccExtended""
    find $2/ -name "*.smali" | xargs sed -i 's#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIcc()Ljava\/util\/ArrayList#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIccExtended()Ljava\/util\/ArrayList#g'
fi

if [ "$1" = "Settings" ];then
    applyPatch $1 $2
    sed -i '/<resources>/a\
    <string name="oneplus_security">指纹与密码<\/string>' $2/res/values-zh-rCN/strings.xml
    sed -i '/<resources>/a\
    <string name="oneplus_security">Fingerprint management<\/string>' $2/res/values/strings.xml
    sed -i '/android:key="passcode_items">/a\
        <Preference android:title="@string\/oneplus_security" android:key="oneplus_security" android:widgetLayout="@flyme:layout\/mz_right_arrow" \/>' $2/res/xml/keyguard_settings.xml
fi
