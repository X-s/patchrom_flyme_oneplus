.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final CLOSE_WIFI_AP:I = 0x1

.field private static final CONFIG_SUBTEXT:I = 0x7f0c0585

.field private static final CONNECTED_DEVICE_MANAGER:Ljava/lang/String; = "connected_device_manager"

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"


# instance fields
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

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 131
    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Lcom/android/settings_ex/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$2;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Lcom/android/settings_ex/TetherSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$3;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TetherSettings;)Lcom/oneplus/widget/preference/OPPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TetherSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 730
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 731
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 736
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 730
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 729
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 736
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0c0585

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 282
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 284
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 285
    const v3, 0x10403d6

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 291
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 599
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const/high16 v5, 0x10000

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

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 591
    invoke-static {p0}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 669
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 671
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 672
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0707

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 677
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 607
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 608
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 641
    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 666
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 647
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 648
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 649
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 650
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 651
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c033b

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 652
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 655
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c0709

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 660
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 524
    const/4 v6, 0x0

    .line 525
    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 526
    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 527
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 526
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 525
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 531
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 532
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 567
    :goto_2
    return-void

    .line 534
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 535
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c033c

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 538
    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c033b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 542
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 543
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 547
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 548
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 549
    const v17, 0x7f0c070b

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 552
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 553
    .end local v16    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c070a

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 556
    :cond_7
    if-eqz v6, :cond_8

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c070e

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 559
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c0709

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 562
    .end local v8    # "bluetoothTethered":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0c070d

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateConnectedDeviceCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    const v2, 0x7f0c027b

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(I)V

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "mConnectCount":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 451
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 454
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 469
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 471
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 472
    .local v9, "usbAvailable":Z
    :goto_0
    const/4 v10, 0x0

    .line 473
    .local v10, "usbError":I
    move-object/from16 v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 474
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 475
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 476
    if-nez v10, :cond_0

    .line 477
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 474
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 471
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "usbAvailable":Z
    .end local v10    # "usbError":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 473
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "usbAvailable":Z
    .restart local v10    # "usbError":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 482
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 483
    .local v12, "usbTethered":Z
    move-object/from16 v0, p2

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 484
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 485
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 484
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 483
    .end local v7    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 488
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 489
    .local v11, "usbErrored":Z
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 490
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 491
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 490
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 489
    .end local v7    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 495
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 496
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0703

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 497
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 498
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 520
    :goto_7
    return-void

    .line 499
    :cond_a
    if-eqz v9, :cond_c

    .line 500
    if-nez v10, :cond_b

    .line 501
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0702

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 505
    :goto_8
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 506
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 503
    :cond_b
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0707

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 507
    :cond_c
    if-eqz v11, :cond_d

    .line 508
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0707

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 509
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 510
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 511
    :cond_d
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 512
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0704

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 513
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 514
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 516
    :cond_e
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f0c0705

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 517
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 518
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 766
    const v0, 0x7f0c0bd0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 619
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 620
    if-nez p1, :cond_0

    .line 621
    if-ne p2, v1, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 623
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_1
    iput v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 632
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 740
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 742
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 749
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v1, v5}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 750
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 751
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 752
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 756
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 757
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0585

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 762
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const-string v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 190
    :cond_0
    const v8, 0x7f080054

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->addPreferencesFromResource(I)V

    .line 192
    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 194
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    .line 196
    :cond_1
    iput-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    .line 197
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 268
    :goto_0
    return-void

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 203
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 208
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 210
    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 211
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 212
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 214
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 217
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 218
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 219
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 221
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    move v5, v9

    .line 222
    .local v5, "usbAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_8

    move v7, v9

    .line 223
    .local v7, "wifiAvailable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_9

    move v2, v9

    .line 225
    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_5
    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_a

    .line 230
    new-instance v8, Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    .line 236
    :goto_4
    const-string v8, "connected_device_manager"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/widget/preference/OPPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/widget/preference/OPPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v11, 0xd

    if-ne v8, v11, :cond_b

    .line 240
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, v9}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 246
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v11, "com.oneplus.wifiapsettings"

    invoke-static {v8, v11}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_6
    if-nez v2, :cond_c

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 262
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 263
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "com.android.server.WifiManager.action.SHUT_DOWN_HOTSPOT"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_7
    move v5, v10

    .line 221
    goto/16 :goto_1

    .restart local v5    # "usbAvailable":Z
    :cond_8
    move v7, v10

    .line 222
    goto/16 :goto_2

    .restart local v7    # "wifiAvailable":Z
    :cond_9
    move v2, v10

    .line 223
    goto/16 :goto_3

    .line 233
    .restart local v2    # "bluetoothAvailable":Z
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 243
    :cond_b
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, v10}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 252
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 253
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 254
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 256
    :cond_d
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 309
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 311
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 315
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 448
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 570
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 572
    .local v0, "enable":Z
    if-eqz v0, :cond_1

    .line 573
    invoke-direct {p0, v3}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 574
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.oneplus.wifiapsettings"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 577
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 587
    :cond_0
    :goto_0
    return v3

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 584
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 585
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mConnectedDeviceManagerPreference:Lcom/oneplus/widget/preference/OPPreference;

    if-ne p1, v1, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.oneplus.wifiapsettings"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OPWIFIAP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    .line 782
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 777
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 681
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 684
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_3

    .line 685
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .line 687
    .local v5, "newState":Z
    if-eqz v5, :cond_1

    .line 688
    invoke-direct {p0, v8}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 725
    .end local v5    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 690
    .restart local v5    # "newState":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 693
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 695
    .end local v5    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_9

    .line 696
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 698
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_4

    .line 699
    invoke-direct {p0, v9}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_exlib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 704
    :cond_5
    const/4 v4, 0x0

    .line 706
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 710
    const/4 v4, 0x1

    .line 713
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 714
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 715
    :cond_7
    if-eqz v4, :cond_8

    .line 716
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0c070e

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 718
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0c070d

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 721
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    .line 722
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TetherSettings;->updateConnectedDeviceCount(I)V

    .line 373
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 389
    iget-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 392
    if-eqz v1, :cond_0

    .line 393
    const v4, 0x7f0c0868

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 426
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 400
    .local v0, "activity":Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 401
    new-instance v4, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 405
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 406
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 416
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 420
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 421
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 425
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 432
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    goto :goto_0
.end method
