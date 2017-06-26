.class public Lcom/android/settings_ex/deviceinfo/Status;
.super Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final EVENT_UPDATE_CONNECTIVITY:I = 0x258

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_IMEI_INFO:Ljava/lang/String; = "imei_info"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "sim_status"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;-><init>()V

    .line 131
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$1;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$2;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 375
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 376
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 377
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 379
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 367
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 368
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 278
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 331
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "alt"    # Ljava/lang/String;

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 316
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 317
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 316
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x2c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 181
    new-instance v6, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 183
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 184
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 186
    const v6, 0x7f08001c

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 187
    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 188
    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 189
    const-string v6, "bt_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 190
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 191
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 192
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c02dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 196
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c0641

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 199
    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasBluetooth()Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iput-object v8, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasWimax()Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    iput-object v8, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 211
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 212
    sget-object v1, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v1, v2

    .line 213
    .local v3, "intent":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateConnectivity()V

    .line 218
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 219
    .local v5, "serial":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    const-string v6, "serial_number"

    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 227
    const-string v6, "sim_status"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 228
    const-string v6, "imei_info"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/deviceinfo/Status$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/deviceinfo/Status$3;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 247
    return-void

    .line 222
    :cond_4
    const-string v6, "serial_number"

    invoke-direct {p0, v6}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->finish()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWimaxStatus()V

    .line 350
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWifiStatus()V

    .line 351
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setBtStatus()V

    .line 352
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setIpAddressStatus()V

    .line 353
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 357
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 359
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 360
    const-wide/16 v2, 0x1

    .line 363
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method
