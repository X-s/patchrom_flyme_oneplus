.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_TETHERING:I = 0x2

.field private static final CONFIG_SUBTEXT:I = 0x7f090413

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field public static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"

.field public static final USB_TETHERING:I = 0x1

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field public static final WIFI_TETHERING:I


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

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/StorageManager;

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
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 222
    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 654
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

    .line 655
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

    .line 656
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 661
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 655
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 661
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
    const v6, 0x7f090413

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 203
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 204
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 207
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 209
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 210
    const v3, 0x1040503

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
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

    .line 220
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 216
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

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 512
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provisionApp length should at least be 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 515
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "intent":Landroid/content/Intent;
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 524
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "provisionApp":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/settings_ex/TetherSettings;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 594
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 596
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f090571

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 699
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 701
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 702
    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    .line 701
    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    .line 702
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 532
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 533
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 541
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 566
    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 573
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 574
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 575
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 576
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0901b5

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 577
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 580
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f090573

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 585
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 566
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
    .line 442
    const/4 v6, 0x0

    .line 443
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

    .line 444
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

    .line 445
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 444
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 443
    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 449
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 450
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    .line 486
    :goto_2
    return-void

    .line 452
    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 453
    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0901b6

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 456
    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0901b5

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 460
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 461
    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/TetherSettings;->updateUsingHotspot()V

    .line 466
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 467
    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 468
    const v17, 0x7f090575

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

    .line 471
    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 472
    .end local v16    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090574

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 475
    :cond_7
    if-eqz v6, :cond_8

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090578

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 478
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090573

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 481
    .end local v8    # "bluetoothTethered":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090577

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 368
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 371
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 386
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 388
    .local v2, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 389
    .local v9, "usbAvailable":Z
    :goto_0
    const/4 v10, 0x0

    .line 390
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

    .line 391
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

    .line 392
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 393
    if-nez v10, :cond_0

    .line 394
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 391
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 388
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

    .line 390
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

    .line 399
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 400
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

    .line 401
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

    .line 402
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 401
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 400
    .end local v7    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .line 405
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 406
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

    .line 407
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

    .line 408
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 407
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 406
    .end local v7    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_5

    .line 412
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 413
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f09056d

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 414
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateUsingHotspot()V

    .line 415
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 416
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 438
    :goto_7
    return-void

    .line 417
    :cond_a
    if-eqz v9, :cond_c

    .line 418
    if-nez v10, :cond_b

    .line 419
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f09056c

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 423
    :goto_8
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 424
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 421
    :cond_b
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f090571

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 425
    :cond_c
    if-eqz v11, :cond_d

    .line 426
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f090571

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 427
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 428
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 429
    :cond_d
    iget-boolean v13, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 430
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f09056e

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 431
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 432
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 434
    :cond_e
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v14, 0x7f09056f

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 435
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 436
    iget-object v13, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method

.method private updateUsingHotspot()V
    .locals 5

    .prologue
    .line 185
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "formats":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 187
    .local v2, "todayDate":Ljava/util/Date;
    const/4 v0, 0x0

    .line 189
    .local v0, "currentDate":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_start_init_date"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 689
    const v0, 0x7f090a23

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

    .line 544
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 545
    if-nez p1, :cond_0

    .line 546
    if-ne p2, v1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 548
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 560
    :goto_1
    iput v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 557
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 552
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

    .line 665
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 667
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 675
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 680
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090413

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

    .line 685
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 677
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

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 120
    :cond_0
    const v8, 0x7f060065

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->addPreferencesFromResource(I)V

    .line 122
    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 124
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    iput-boolean v9, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    .line 126
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 181
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 131
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 132
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 137
    :cond_2
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 139
    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 140
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 141
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 143
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 144
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 147
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 148
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 149
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 151
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v5, v9

    .line 152
    .local v5, "usbAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v7, v9

    .line 153
    .local v7, "wifiAvailable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    move v2, v9

    .line 155
    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    :cond_4
    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_8

    .line 160
    new-instance v8, Lcom/android/settings_ex/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settings_ex/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    .line 167
    :goto_4
    if-nez v2, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_5
    move v5, v10

    .line 151
    goto :goto_1

    .restart local v5    # "usbAvailable":Z
    :cond_6
    move v7, v10

    .line 152
    goto :goto_2

    .restart local v7    # "wifiAvailable":Z
    :cond_7
    move v2, v10

    .line 153
    goto :goto_3

    .line 163
    .restart local v2    # "bluetoothAvailable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 170
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 171
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 172
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateUsingHotspot()V

    goto :goto_5

    .line 175
    :cond_a
    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 234
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 237
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 240
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 489
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 491
    .local v0, "enable":Z
    if-eqz v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateUsingHotspot()V

    .line 493
    invoke-direct {p0, v2}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 500
    :goto_0
    return v2

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 606
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 609
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_3

    .line 610
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .line 612
    .local v5, "newState":Z
    if-eqz v5, :cond_1

    .line 613
    invoke-direct {p0, v8}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 650
    .end local v5    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 615
    .restart local v5    # "newState":Z
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 618
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 620
    .end local v5    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_9

    .line 621
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 623
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_4

    .line 624
    invoke-direct {p0, v9}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 626
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 627
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/settings_ex/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 629
    :cond_5
    const/4 v4, 0x0

    .line 631
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 632
    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 635
    const/4 v4, 0x1

    .line 638
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 639
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 640
    :cond_7
    if-eqz v4, :cond_8

    .line 641
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f090578

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 643
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f090577

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 646
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    .line 647
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 295
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 297
    iget-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v6, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 299
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 300
    if-eqz v1, :cond_0

    .line 301
    const v6, 0x7f0906d5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 350
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 307
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_6

    .line 308
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 309
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v5, :cond_4

    .line 310
    iput-boolean v8, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 325
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :goto_1
    new-instance v6, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 329
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v6, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 344
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v6, :cond_3

    .line 345
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v6}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 349
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    goto :goto_0

    .line 312
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/TetherSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 314
    .local v4, "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 315
    iput-boolean v8, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    goto :goto_1

    .line 317
    :cond_5
    const-string v7, "shared"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    goto/16 :goto_1

    .line 322
    .end local v4    # "physicalVols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_6
    iput-boolean v8, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 356
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    goto :goto_0
.end method
