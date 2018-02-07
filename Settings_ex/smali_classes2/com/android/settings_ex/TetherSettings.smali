.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$1;,
        Lcom/android/settings_ex/TetherSettings$2;,
        Lcom/android/settings_ex/TetherSettings$3;,
        Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_EXTRA:Ljava/lang/String; = "choice"

.field private static final ACTION_EXTRA_VALUE:Ljava/lang/String; = "value"

.field private static final ACTION_HOTSPOT_CONFIGURE_RRSPONSE:Ljava/lang/String; = "Hotspot_PreConfigure_Response"

.field private static final ACTION_HOTSPOT_POST_CONFIGURE:Ljava/lang/String; = "Hotspot_PostConfigure"

.field private static final ACTION_HOTSPOT_PRE_CONFIGURE:Ljava/lang/String; = "Hotspot_PreConfigure"

.field private static final CLOSE_WIFI_AP:I = 0x1

.field private static final CONFIGURE_RESULT:Ljava/lang/String; = "PreConfigure_result"

.field private static final CONFIG_SUBTEXT:I = 0x7f0e0792

.field private static final CONNECTED_DEVICE_MANAGER:Ljava/lang/String; = "connected_device_manager"

.field private static final DATA_SAVER_FOOTER:Ljava/lang/String; = "disabled_on_data_saver"

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final ENABLE_WIFI_AP_EXT:Ljava/lang/String; = "enable_wifi_ap_ext"

.field private static final KEY_FIRST_LAUNCH_HOTSPOT:Ljava/lang/String; = "FirstLaunchHotspotTethering"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final SHAREPREFERENCE_DEFAULT_WIFI:Ljava/lang/String; = "def_wifiap_set"

.field private static final SHAREPREFERENCE_FIFE_NAME:Ljava/lang/String; = "MY_PERFS"

.field private static final TAG:Ljava/lang/String; = "TetheringSettings"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"


# instance fields
.field private TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCloseWiFIAPHandler:Landroid/os/Handler;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfigureReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreateNetwork:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSecurityType:[Ljava/lang/String;

.field private mStartTetheringCallback:Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/TetherSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mCloseWiFIAPHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/TetherSettings;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/TetherSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/TetherSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/TetherSettings;Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/TetherSettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->setWifiStaSapConcurrencyEnabled(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/TetherSettings;I)V
    .locals 0
    .param p1, "choice"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/TetherSettings;I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 237
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 175
    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mCloseWiFIAPHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/android/settings_ex/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$2;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1036
    new-instance v0, Lcom/android/settings_ex/TetherSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$3;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    .line 1035
    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 236
    return-void
.end method

.method private addSpaceWhileZhCn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 922
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " "

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private checkDefaultValue(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 962
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 963
    const v6, 0x7f0c0038

    .line 962
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 964
    .local v1, "def_ssid":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 965
    .local v0, "clear_pwd":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 967
    :cond_0
    const-string/jumbo v5, "MY_PERFS"

    .line 966
    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 969
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "def_wifiap_set"

    .line 968
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 970
    .local v3, "hasSetDefaultValue":Z
    if-nez v3, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings_ex/TetherSettings;->setDefaultValue(Landroid/content/Context;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 971
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 972
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "def_wifiap_set"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 961
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "hasSetDefaultValue":Z
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const v6, 0x7f0e0792

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 409
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 411
    iput-boolean v8, p0, Lcom/android/settings_ex/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 413
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-nez v3, :cond_0

    .line 414
    return-void

    .line 417
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_1

    .line 419
    const v3, 0x10403f6

    .line 418
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 422
    aput-object v2, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 420
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 426
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 427
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 426
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 817
    const v6, 0x107001a

    .line 816
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 819
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const/high16 v5, 0x10000

    .line 822
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isNeedShowHelp(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 951
    const-string/jumbo v3, "MY_PERFS"

    .line 950
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 952
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 953
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 954
    .local v1, "isFirstUse":Z
    if-eqz v1, :cond_0

    .line 955
    const-string/jumbo v3, "FirstLaunchHotspotTethering"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 956
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 958
    :cond_0
    return v1
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-static {p0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    invoke-static {p0}, Lcom/android/settings_ex/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCardReady(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 761
    const/4 v1, 0x5

    .line 760
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerConfigureReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1016
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "Hotspot_PreConfigure_Response"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1018
    new-instance v1, Lcom/android/settings_ex/TetherSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/TetherSettings$6;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1015
    return-void
.end method

.method private setDefaultValue(Landroid/content/Context;ZZ)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "default_ssid"    # Z
    .param p3, "clear_password"    # Z

    .prologue
    const/4 v6, 0x0

    .line 979
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 980
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_0

    .line 981
    return v6

    .line 983
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 984
    .local v3, "wifiAPConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v3, :cond_1

    .line 985
    return v6

    .line 987
    :cond_1
    if-eqz p2, :cond_3

    .line 989
    const-string/jumbo v5, "phone"

    .line 988
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 990
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "deviceId":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 992
    .local v1, "lastFourDigits":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 993
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 995
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 996
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 997
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1001
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v1    # "lastFourDigits":Ljava/lang/String;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    if-eqz p3, :cond_4

    .line 1002
    const-string/jumbo v5, ""

    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1004
    :cond_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1005
    const/4 v5, 0x1

    return v5
.end method

.method private setWifiStaSapConcurrencyEnabled(Landroid/content/Context;)V
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_share_wifi"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 448
    .local v2, "value":I
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 451
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "setWifiStaSapConcurrencyEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;

    .line 452
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->setWifiStaSapConcurrencyEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showNoSimCardDialog(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 740
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 741
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 744
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0593

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    new-instance v3, Lcom/android/settings_ex/TetherSettings$5;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$5;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    .line 745
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 753
    const/4 v2, 0x1

    return v2

    .line 755
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private startTethering(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x1

    .line 827
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 829
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 830
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 831
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 832
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 833
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0e0525

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 834
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 835
    return-void

    .line 839
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mStartTetheringCallback:Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 826
    return-void
.end method

.method private unRegisterConfigureReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1009
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1011
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConfigureReceiver:Landroid/content/BroadcastReceiver;

    .line 1008
    :cond_0
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 693
    const/4 v2, 0x0

    .line 694
    .local v2, "bluetoothErrored":Z
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, p3, v10

    .line 695
    .local v7, "s":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v6, v12, v9

    .line 696
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    .line 695
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 694
    .end local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 700
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 701
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_3

    .line 702
    return-void

    .line 704
    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 705
    .local v5, "btState":I
    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    .line 706
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 707
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0526

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 692
    :goto_2
    return-void

    .line 708
    :cond_4
    const/16 v9, 0xb

    if-ne v5, v9, :cond_5

    .line 709
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 710
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0525

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 712
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 713
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v9, 0xc

    if-ne v5, v9, :cond_a

    if-eqz v3, :cond_a

    .line 714
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    .line 713
    if-eqz v9, :cond_a

    .line 715
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 716
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 717
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 718
    .local v4, "bluetoothTethered":I
    const/4 v9, 0x1

    if-le v4, v9, :cond_7

    .line 719
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 721
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 720
    const v10, 0x7f0e0934

    .line 719
    invoke-virtual {p0, v10, v9}, Lcom/android/settings_ex/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, "summary":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 716
    .end local v4    # "bluetoothTethered":I
    .end local v8    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    .line 723
    .restart local v4    # "bluetoothTethered":I
    :cond_7
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    .line 724
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 725
    const v10, 0x7f0e0933

    .line 724
    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 726
    :cond_8
    if-eqz v2, :cond_9

    .line 727
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0937

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 729
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0932

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 732
    .end local v4    # "bluetoothTethered":I
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 733
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 734
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f0e0936

    invoke-virtual {v9, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 732
    :cond_b
    const/4 v9, 0x1

    goto :goto_4
.end method

.method private updateConnectedDeviceCount(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 540
    if-nez p1, :cond_2

    .line 541
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hotspot_auto_shut_down"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    .local v1, "mHotspotAutoShutDownValue":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0e02e5

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 539
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 541
    goto :goto_0

    .line 545
    .restart local v1    # "mHotspotAutoShutDownValue":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0e03d3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 549
    .end local v1    # "mHotspotAutoShutDownValue":Z
    :cond_2
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 550
    const v4, 0x7f0e02e6

    .line 549
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "mConnectCount":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isEn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-le p1, v1, :cond_3

    .line 552
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 553
    const v4, 0x7f0e02e7

    .line 552
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 625
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "available":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "tethered":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 633
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 640
    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 641
    .local v2, "usbAvailable":Z
    :goto_0
    const/4 v3, 0x0

    .line 642
    .local v3, "usbError":I
    const/4 v6, 0x0

    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v1, p1, v7

    .line 643
    .local v1, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_2
    if-ge v6, v10, :cond_3

    aget-object v0, v9, v6

    .line 644
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 645
    if-nez v3, :cond_1

    .line 646
    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v1}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v3

    .line 643
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 640
    .end local v0    # "regex":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "usbAvailable":Z
    .end local v3    # "usbError":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "usbAvailable":Z
    goto :goto_0

    .line 642
    .restart local v1    # "s":Ljava/lang/String;
    .restart local v3    # "usbError":I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 651
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    .line 652
    .local v5, "usbTethered":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_7

    aget-object v1, p2, v7

    .line 653
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_4
    if-ge v6, v10, :cond_6

    aget-object v0, v9, v6

    .line 654
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v5, 0x1

    .line 653
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 652
    .end local v0    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 657
    .end local v1    # "s":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 658
    .local v4, "usbErrored":Z
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_5
    if-ge v7, v8, :cond_a

    aget-object v1, p3, v7

    .line 659
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_6
    if-ge v6, v10, :cond_9

    aget-object v0, v9, v6

    .line 660
    .restart local v0    # "regex":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    .line 659
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 658
    .end local v0    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_5

    .line 664
    .end local v1    # "s":Ljava/lang/String;
    :cond_a
    if-eqz v5, :cond_c

    .line 665
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e092c

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 666
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 667
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 639
    :goto_8
    return-void

    .line 666
    :cond_b
    const/4 v6, 0x1

    goto :goto_7

    .line 668
    :cond_c
    if-eqz v2, :cond_f

    .line 669
    if-nez v3, :cond_d

    .line 670
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e092b

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 674
    :goto_9
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 675
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 672
    :cond_d
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0930

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_9

    .line 674
    :cond_e
    const/4 v6, 0x1

    goto :goto_a

    .line 676
    :cond_f
    if-eqz v4, :cond_10

    .line 677
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e0930

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 678
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 679
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 680
    :cond_10
    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v6, :cond_11

    .line 681
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e092d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 682
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 683
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 685
    :cond_11
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0e092e

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 686
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 687
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 928
    const v0, 0x7f0e0d80

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x5a

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 404
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 875
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 876
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 878
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->confirmConfig()V

    .line 880
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 887
    const-string/jumbo v1, "TetheringSettings"

    .line 888
    const-string/jumbo v2, "Wifi AP config changed while enabled, stop and restart"

    .line 887
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 891
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 893
    iput-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 894
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 899
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 904
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0792

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->addSpaceWhileZhCn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 874
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 914
    :cond_3
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->cancelConfig()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 242
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    const-string/jumbo v9, "TETHER_TYPE"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 247
    :cond_0
    const v9, 0x7f080090

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->addPreferencesFromResource(I)V

    .line 249
    new-instance v9, Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/settings_ex/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    .line 250
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings_ex/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    .line 251
    const-string/jumbo v9, "disabled_on_data_saver"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    .line 253
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->isUiRestricted()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 255
    iput-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    .line 256
    new-instance v9, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 257
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 261
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 262
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 264
    const/4 v11, 0x5

    .line 263
    invoke-virtual {v1, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 266
    :cond_2
    const-string/jumbo v9, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 269
    const v10, 0x7f0c001f

    .line 268
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 270
    .local v3, "enableWifiApSettingsExt":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0020

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 271
    .local v4, "isWifiApEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/TetherSettings;->checkDefaultValue(Landroid/content/Context;)V

    .line 272
    if-eqz v3, :cond_8

    .line 274
    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/HotspotPreference;

    .line 273
    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "enable_wifi_ap"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 277
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    new-instance v10, Lcom/android/settings_ex/TetherSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/TetherSettings$4;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 300
    :goto_0
    if-eqz v4, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 306
    const v10, 0x7f0c003f

    .line 305
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 307
    const-string/jumbo v9, "tethering_help"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    .line 312
    :goto_1
    const-string/jumbo v9, "usb_tether_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    .line 313
    const-string/jumbo v9, "enable_bluetooth_tethering"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 315
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 317
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 318
    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 320
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 321
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 322
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 324
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_a

    const/4 v7, 0x1

    .line 325
    .local v7, "usbAvailable":Z
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_b

    const/4 v8, 0x1

    .line 326
    .local v8, "wifiAvailable":Z
    :goto_3
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    .line 328
    .local v2, "bluetoothAvailable":Z
    :goto_4
    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 332
    :cond_5
    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 336
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 337
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 340
    :goto_5
    const-string/jumbo v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 341
    const-string/jumbo v9, "connected_device_manager"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    .line 342
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    const-string/jumbo v9, "tether_settings_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 345
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_e

    .line 346
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 347
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 352
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.oneplus.wifiapsettings"

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 353
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 356
    :cond_7
    if-nez v2, :cond_f

    .line 357
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 367
    :goto_7
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v9}, Lcom/android/settings_ex/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->onDataSaverChanged(Z)V

    .line 369
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 370
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "com.android.server.WifiManager.action.SHUT_DOWN_HOTSPOT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v9, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void

    .line 293
    .end local v2    # "bluetoothAvailable":Z
    .end local v7    # "usbAvailable":Z
    .end local v8    # "wifiAvailable":Z
    :cond_8
    const-string/jumbo v9, "tether_settings_key"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 292
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 295
    .local v6, "tetherCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v9, "enable_wifi_ap"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v14/preference/SwitchPreference;

    .line 294
    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    .line 297
    const-string/jumbo v9, "enable_wifi_ap_ext"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 309
    .end local v6    # "tetherCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "tethering_help"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 324
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "usbAvailable":Z
    goto/16 :goto_2

    .line 325
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "wifiAvailable":Z
    goto/16 :goto_3

    .line 326
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "bluetoothAvailable":Z
    goto/16 :goto_4

    .line 333
    :cond_d
    new-instance v9, Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/datausage/DataSaverBackend;Landroid/support/v7/preference/Preference;)V

    iput-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    .line 334
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    goto/16 :goto_5

    .line 349
    :cond_e
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 359
    :cond_f
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 360
    .local v5, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 361
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v13}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 363
    :cond_10
    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 436
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 438
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 439
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    return-object v1

    .line 442
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDataSaverChanged(Z)V
    .locals 4
    .param p1, "isDataSaving"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 394
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 391
    return-void

    :cond_0
    move v0, v2

    .line 393
    goto :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto :goto_1

    :cond_2
    move v1, v2

    .line 395
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->remListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 379
    return-void

    .line 384
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 766
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 767
    .local v1, "enable":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 768
    const v5, 0x7f0c001f

    .line 767
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 769
    .local v2, "enableWifiApSettingsExt":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 770
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_3

    .line 771
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->showNoSimCardDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    check-cast p1, Lcom/android/settings_ex/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v6}, Lcom/android/settings_ex/HotspotPreference;->setChecked(Z)V

    .line 773
    return v6

    .line 774
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->isNeedShowHelp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 775
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 776
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "Hotspot_PreConfigure"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string/jumbo v4, "com.qualcomm.qti.extsettings"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 779
    check-cast p1, Lcom/android/settings_ex/HotspotPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v6}, Lcom/android/settings_ex/HotspotPreference;->setChecked(Z)V

    .line 780
    return v6

    .line 784
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 785
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 787
    invoke-direct {p0, v0}, Lcom/android/settings_ex/TetherSettings;->setWifiStaSapConcurrencyEnabled(Landroid/content/Context;)V

    .line 788
    invoke-direct {p0, v6}, Lcom/android/settings_ex/TetherSettings;->startTethering(I)V

    .line 791
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 792
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "com.oneplus.wifiapsettings"

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 794
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 807
    :goto_0
    return v6

    .line 796
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 797
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 801
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 803
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 804
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->TetherSettingsCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 935
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.oneplus.wifiapsettings"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 938
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.oem.intent.action.OPWIFIAP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 945
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 940
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 844
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 845
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    invoke-direct {p0, v2}, Lcom/android/settings_ex/TetherSettings;->startTethering(I)V

    .line 871
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 851
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    invoke-direct {p0, v3}, Lcom/android/settings_ex/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 854
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 857
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    goto :goto_0

    .line 859
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 860
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 861
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 862
    const v2, 0x7f0c003f

    .line 861
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/support/v7/preference/PreferenceScreen;

    if-ne p1, v1, :cond_0

    .line 864
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 865
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e1077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 866
    const v1, 0x7f0e1078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 867
    const v1, 0x7f0e0593

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 533
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 534
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 531
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 563
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 565
    iget-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0e00a0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 570
    return-void

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 575
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mStartTetheringCallback:Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;

    .line 577
    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 578
    new-instance v3, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 583
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 594
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 598
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v3, :cond_3

    .line 599
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 600
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 603
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    .line 604
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/TetherSettings;->registerConfigureReceiver(Landroid/content/Context;)V

    .line 562
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStop()V

    .line 611
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 612
    return-void

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 615
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 616
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mStartTetheringCallback:Lcom/android/settings_ex/TetherSettings$OnStartTetheringCallback;

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    .line 621
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->unRegisterConfigureReceiver()V

    .line 608
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 400
    return-void
.end method
