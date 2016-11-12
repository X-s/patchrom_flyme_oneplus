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

if [ "$1" = "TeleService" ];then
        echo ">>>> in custom_app for $1 to adjust the interface SubId PhoneId"
        sed -i 's#    add-int/lit8 v2, v3, -0x1#    add-int/lit8 v2, v3, -0x1\
\
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I\
\
    move-result v3\
\
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;\
\
    move-result-object v4\
\
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I\
\
    move-result v2#g' $tempSmaliDir/smali/com/android/phone/MzPhoneInterfaceManager.smali
fi

if [ "$1" = "Settings" ];then
    echo ">>>> in custom_app for $1 to add oneplus security xml"
    sed -i '/<resources>/a\
    <string name="oneplus_security">指纹与密码<\/string>' $2/res/values-zh-rCN/strings.xml
    sed -i '/<resources>/a\
    <string name="oneplus_security">Fingerprint management<\/string>' $2/res/values/strings.xml
    sed -i '/android:key="fp_category">/a\
        <Preference android:title="@string\/oneplus_security" android:key="oneplus_security" android:widgetLayout="@flyme:layout\/mz_right_arrow" \/>' $2/res/xml/keyguard_settings.xml

    applyPatch $1 $2
fi

if [ "$1" = "SystemUI" ]; then
    echo ">>> in custom_app for $1 fix mobile data"
    sed -i 's#    .end packed-switch#        :pswitch_0\
        :pswitch_0\
        :pswitch_0\
        :pswitch_0\
        :pswitch_0\
        :pswitch_0\
        :pswitch_0\
        :pswitch_2\
        :pswitch_0\
        :pswitch_4\
    .end packed-switch#g' $2/smali/com/flyme/systemui/qs/tiles/MobileDataTile.smali

    sed -i 's#    aput v4, v1, v5#    const/16 v3, 0x12\
\
    aput v3, v1, v5#g' $2/smali/com/android/systemui/statusbar/policy/MobileDataControllerImpl.smali

    sed -i 's#const/16 v3, 0x9#const/16 v3, 0x14#g' $2/smali/com/android/systemui/statusbar/policy/MobileDataControllerImpl.smali
fi
