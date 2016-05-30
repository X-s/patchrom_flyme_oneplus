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

if [ "$1" = "Settings" ];then

    echo ">>>> in custom_app for $1 to remove flyme screenlock xml"
    sed -i '/->removePreferenceInGuestMode()V/a\
\
    iget-object v0, p0, Lcom\/meizu\/settings\/security\/SecuritySettings;->mPasswordCategory:Landroid\/preference\/PreferenceCategory;\
\
    iget-object v2, p0, Lcom\/meizu\/settings\/security\/SecuritySettings;->mScreenLockPreference:Landroid\/preference\/Preference;\
\
    invoke-virtual {v0, v2}, Landroid\/preference\/PreferenceCategory;->removePreference(Landroid\/preference\/Preference;)Z' $2/smali/com/meizu/settings/security/SecuritySettings.smali

    echo ">>>> in custom_app for $1 to add oneplus security xml"
    sed -i '/<resources>/a\
    <string name="oneplus_security">指纹与密码<\/string>' $2/res/values-zh-rCN/strings.xml
    sed -i '/<resources>/a\
    <string name="oneplus_security">Fingerprint management<\/string>' $2/res/values/strings.xml
    sed -i '/android:key="passcode_items">/a\
        <Preference android:title="@string\/oneplus_security" android:key="oneplus_security" android:widgetLayout="@flyme:layout\/mz_right_arrow" \/>' $2/res/xml/keyguard_settings.xml

    echo ">>>> in custom_app for $1 to add oneplus security intent"
    sed -i '/field private mScreenLockPreference:Landroid\/preference\/Preference;/a\
\
.field private mOnePlusSecurityPreference:Landroid\/preference\/Preference;' $2/smali/com/meizu/settings/security/SecuritySettings.smali
    sed -i '/iput-object v1, p0, Lcom\/meizu\/settings\/security\/SecuritySettings;->mScreenLockPreference:Landroid\/preference\/Preference;/a\
\
    const-string v1, "oneplus_security"\
\
    invoke-virtual {v0, v1}, Landroid\/preference\/PreferenceScreen;->findPreference(Ljava\/lang\/CharSequence;)Landroid\/preference\/Preference;\
\
    move-result-object v1\
\
    iput-object v1, p0, Lcom\/meizu\/settings\/security\/SecuritySettings;->mOnePlusSecurityPreference:Landroid\/preference\/Preference;' $2/smali/com/meizu/settings/security/SecuritySettings.smali
    sed -i 's/if-ne p2, v0, :cond_10/if-ne p2, v0, :cond_xs/' $2/smali/com/meizu/settings/security/SecuritySettings.smali
    sed -i '/invoke-direct {p0}, Lcom\/meizu\/settings\/security\/SecuritySettings;->handleRootPermissionPreferenceClick()V/a\
\
    goto\/16 :goto_0\
\
    :cond_xs\
    iget-object v0, p0, Lcom\/meizu\/settings\/security\/SecuritySettings;->mOnePlusSecurityPreference:Landroid\/preference\/Preference;\
\
    if-ne p2, v0, :cond_10\
\
    new-instance v0, Landroid\/content\/Intent;\
\
    invoke-direct {v0}, Landroid\/content\/Intent;-><init>()V\
\
    .local v0, "intent":Landroid\/content\/Intent;\
    const-string v1, "com.android.settings_ex"\
\
    const-string v2, "com.android.settings_ex.Settings$FingerprintAndPWDActivity"\
\
    invoke-virtual {v0, v1, v2}, Landroid\/content\/Intent;->setClassName(Ljava\/lang\/String;Ljava\/lang\/String;)Landroid\/content\/Intent;\
\
    invoke-virtual {p0, v0}, Lcom\/meizu\/settings\/security\/SecuritySettings;->startActivity(Landroid\/content\/Intent;)V\
\
    .end local v0    # "intent":Landroid\/content\/Intent;' $2/smali/com/meizu/settings/security/SecuritySettings.smali
fi
