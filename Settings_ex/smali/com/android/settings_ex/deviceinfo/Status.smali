.class public Lcom/android/settings_ex/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_SELECT_SUB_KEY:Ljava/lang/String; = "button_aboutphone_msim_status"

.field static final CB_AREA_INFO_RECEIVED_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

.field static final CB_AREA_INFO_SENDER_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final EVENT_UPDATE_CONNECTIVITY:I = 0x258

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field static final GET_LATEST_CB_AREA_INFO_ACTION:Ljava/lang/String; = "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMEI_SV:Ljava/lang/String; = "imei_sv"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_LATEST_AREA_INFO:Ljava/lang/String; = "latest_area_info"

.field private static final KEY_MEID_NUMBER:Ljava/lang/String; = "meid_number"

.field private static final KEY_MIN_NUMBER:Ljava/lang/String; = "min_number"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PRL_VERSION:Ljava/lang/String; = "prl_version"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const-string v1, "service_state"

    aput-object v1, v0, v4

    const-string v1, "operator_name"

    aput-object v1, v0, v5

    const-string v1, "roaming_state"

    aput-object v1, v0, v6

    const-string v1, "network_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "latest_area_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 110
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    aput-object v1, v0, v4

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 183
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$1;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$2;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 204
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$3;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Status$4;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/Status;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/Status;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 688
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 689
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 690
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 692
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

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 511
    packed-switch p1, :pswitch_data_0

    .line 520
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 235
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
    .line 239
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

.method private isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 696
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

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
    .line 680
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 681
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 683
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
    .line 477
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 478
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 640
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 641
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 642
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 659
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 642
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
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
    .line 631
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 637
    :goto_0
    return-void

    .line 635
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
    .line 493
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object p2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 508
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 624
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 625
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 626
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 628
    return-void

    .line 625
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 578
    if-eqz p1, :cond_0

    .line 579
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 536
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 537
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 554
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return-void

    .line 541
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 2

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "networktype":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 559
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 562
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / Data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090146

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_0
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 571
    :cond_0
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090147

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 244
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    new-instance v9, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 248
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 249
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 250
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 252
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 253
    const v9, 0x7f06001d

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 258
    :goto_0
    const-string v9, "battery_level"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 259
    const-string v9, "battery_status"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 260
    const-string v9, "bt_address"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 261
    const-string v9, "wifi_mac_address"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 262
    const-string v9, "wimax_mac_address"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 263
    const-string v9, "wifi_ip_address"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 266
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f09012b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 267
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0904ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 269
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->isMultiSimEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 274
    :cond_0
    const-string v9, "signal_strength"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 275
    const-string v9, "up_time"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 277
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 278
    :cond_1
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_7

    aget-object v4, v0, v2

    .line 279
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_2
    const v9, 0x7f060021

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 284
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CDMA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 285
    const-string v9, "meid_number"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v9, "min_number"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 288
    const-string v9, "min_number"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const v10, 0x7f0904c0

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 291
    :cond_4
    const-string v9, "prl_version"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v9, "imei_sv"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 294
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v9

    if-ne v9, v11, :cond_a

    .line 296
    const-string v9, "icc_id"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v9, "imei"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 330
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_6
    const-string v9, "number"

    invoke-direct {p0, v9, v1}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v9, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 336
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0xc8

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 338
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v10, 0x12c

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 340
    iget-boolean v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-nez v9, :cond_7

    .line 341
    const-string v9, "latest_area_info"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 345
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasBluetooth()Z

    move-result v9

    if-nez v9, :cond_8

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 347
    iput-object v12, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 350
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->hasWimax()Z

    move-result v9

    if-nez v9, :cond_9

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    iput-object v12, p0, Lcom/android/settings_ex/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 355
    :cond_9
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 356
    sget-object v0, Lcom/android/settings_ex/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_c

    aget-object v3, v0, v2

    .line 357
    .local v3, "intent":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v9, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intent":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_a
    const-string v9, "imei"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 302
    const-string v9, "icc_id"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_b
    const-string v9, "imei"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v10, "imei_sv"

    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v10, v9}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v9, "prl_version"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 315
    const-string v9, "meid_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 316
    const-string v9, "min_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 317
    const-string v9, "icc_id"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 320
    const-string v9, "br"

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 321
    iput-boolean v11, p0, Lcom/android/settings_ex/deviceinfo/Status;->mShowLatestAreaInfo:Z

    goto/16 :goto_2

    .line 360
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateConnectivity()V

    .line 362
    sget-object v8, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 363
    .local v8, "serial":Ljava/lang/String;
    if-eqz v8, :cond_e

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 364
    const-string v9, "serial_number"

    invoke-direct {p0, v9, v8}, Lcom/android/settings_ex/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v9

    new-instance v10, Lcom/android/settings_ex/deviceinfo/Status$5;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/deviceinfo/Status$5;-><init>(Lcom/android/settings_ex/deviceinfo/Status;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 391
    const-string v9, "button_aboutphone_msim_status"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 392
    .local v7, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v7, :cond_d

    .line 393
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 394
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    const-string v10, "com.android.settings_ex"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settings_ex.deviceinfo.MSimSubscriptionStatus"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 405
    return-void

    .line 366
    .end local v7    # "selectSub":Landroid/preference/PreferenceScreen;
    :cond_e
    const-string v9, "serial_number"

    invoke-direct {p0, v9}, Lcom/android/settings_ex/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 413
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->finish()V

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 455
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateSignalStrength()V

    .line 430
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 431
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->updateDataState()V

    .line 432
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 434
    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/Status;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 446
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWimaxStatus()V

    .line 663
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setWifiStatus()V

    .line 664
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setBtStatus()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Status;->setIpAddressStatus()V

    .line 666
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 588
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 589
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 590
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 592
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v3    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 598
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local v3    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 600
    .local v2, "signalDbm":I
    if-ne v5, v2, :cond_3

    .line 601
    const/4 v2, 0x0

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 605
    .local v1, "signalAsu":I
    if-ne v5, v1, :cond_4

    .line 606
    const/4 v1, 0x0

    .line 608
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090152

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090153

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 670
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 672
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 673
    const-wide/16 v2, 0x1

    .line 676
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 677
    return-void
.end method
