#!/system/bin/sh
#
# Backup files in OTA
#

export backup_dir=/data/media/0/backupdir
export contasts_database=/data/data/com.android.providers.contacts/databases/contacts2.db
export telephony_database=/data/data/com.android.providers.telephony/databases/mmssms.db
export telephony_app_parts=/data/data/com.android.providers.telephony/app_parts
export wpa_conf=/data/misc/wifi/wpa_supplicant.conf
export p2p_conf=/data/misc/wifi/p2p_supplicant.conf
export softap_conf=/data/misc/wifi/softap.conf

ensure_dir_exist() {
if [ ! -d "$1" ]; then
  mkdir -p $1
fi
}

backup() {
ensure_dir_exist $backup_dir
ensure_dir_exist $backup_dir/$1
case "$1" in
  contacts)
    cp -rf $contasts_database $backup_dir/$1/
  ;;
  telephony)
    cp -rf $telephony_database $backup_dir/$1/
    if [ -d $telephony_app_parts ] ; then
      cp -rf $telephony_app_parts $backup_dir/$1/
    fi
  ;;
  wifi)
    cp -rf $wpa_conf $backup_dir/$1/
    cp -rf $p2p_conf $backup_dir/$1/
    cp -rf $softap_conf $backup_dir/$1/
  ;;
  app)
    if [ -f $backup_dir/$1/app.conf ] ; then
      rm $backup_dir/$1/app.conf
    fi
    touch $backup_dir/$1/app.conf
    for dir in $(ls /data/app/)
    do
        local packagename=${dir%-*}
        echo $packagename >> $backup_dir/$1/app.conf
        cp /data/app/$dir/base.apk $backup_dir/$1/$packagename.apk
        if [ -d /data/data/$packagename ] ; then
          cd /data/data/
          busybox tar -cf $backup_dir/$1/$packagename.tar $packagename
        fi
    done
  ;;
esac
}

case "$1" in
  backup)
    backup contacts
    backup telephony
    backup wifi
    backup app
  ;;
  *)
    exit 1
esac

exit 0
