.class public Lcom/android/settings_ex/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/SwitchPreference;

.field private mWaitForWifiStateChange:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings_ex/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings_ex/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 84
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2, v1}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 88
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 90
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void

    .line 84
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiApEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiApEnabler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 113
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 119
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    .line 116
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v1, 0x7f09040d

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 242
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 180
    const/4 v11, 0x0

    .line 181
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 183
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 184
    check-cast v8, Ljava/lang/String;

    .line 185
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 186
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 185
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 183
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 189
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 190
    check-cast v8, Ljava/lang/String;

    .line 191
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 192
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 191
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 196
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 197
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 198
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 202
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 199
    :cond_7
    if-eqz v10, :cond_6

    .line 200
    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v13, 0x7f09034c

    invoke-virtual {v12, v13}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 104
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 127
    .local v1, "wifiSavedState":I
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 128
    .local v2, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 131
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_1
    if-nez p1, :cond_2

    .line 139
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 144
    :goto_0
    if-ne v1, v5, :cond_2

    .line 145
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 163
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 164
    if-ne v1, v5, :cond_4

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 166
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    :cond_4
    return-void

    .line 155
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const v4, 0x7f09034c

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 140
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1040503

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09040e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 174
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
