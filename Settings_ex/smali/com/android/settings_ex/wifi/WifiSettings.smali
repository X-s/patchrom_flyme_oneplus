.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$Scanner;,
        Lcom/android/settings_ex/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static CTA_DEBUG:Z = false

.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field private static final EVENT_UPDATE_INDEX:I = 0x0

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field private static final KEY_PREFERENCE_DIVIDER:Ljava/lang/String; = "preference_divider_line"

.field private static final KEY_PREFERENCE_DIVIDER1:Ljava/lang/String; = "preference_divider_line1"

.field private static final KEY_WIFIADVANCESETTINGS:Ljava/lang/String; = "wifi_advanced_settings"

.field private static final KEY_WIFILIST:Ljava/lang/String; = "wifi_list"

.field static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_SAVED_NETWORK:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final MENU_ID_WRITE_NFC:I = 0xa

.field private static final SAVED_ACCESS_POINTS:Ljava/lang/String; = "wifi_saved_access_points"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field private static final WIFI_ADD_NETWORK:Ljava/lang/String; = "wifi_add_network"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_ENABE:Ljava/lang/String; = "wifi_enable"

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field private static final WRITE_NFC_DIALOG_ID:I = 0x6

.field private static mScanResultAvailable:Z

.field public static mVerboseLogging:I

.field private static savedNetworksExist:Z


# instance fields
.field private isAlertMark:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAdvanceSettings:Landroid/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mEnableWifi:Landroid/preference/SwitchPreference;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreEmptyScan:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedAccesPoints:Landroid/preference/Preference;

.field private final mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mStateMachineEvent:Z

.field private mWifiAddNetwork:Landroid/preference/Preference;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiList:Landroid/preference/PreferenceCategory;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

.field private preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    sput v0, Lcom/android/settings_ex/wifi/WifiSettings;->mVerboseLogging:I

    .line 176
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z

    .line 201
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanResultAvailable:Z

    .line 1524
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$8;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$8;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreEmptyScan:Z

    .line 295
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 571
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1023
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->isAlertMark:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->isAlertMark:Z

    return p1
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;
    .param p2, "x2"    # Landroid/net/wifi/WifiInfo;
    .param p3, "x3"    # Landroid/net/NetworkInfo;

    .prologue
    .line 97
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createOneDefaultAccessPoint()V

    .line 1148
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1369
    :cond_0
    return-void
.end method

.method private static constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "lastInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "lastNetworkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiManager;",
            "Landroid/net/wifi/WifiInfo;",
            "Landroid/net/NetworkInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v1, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    .line 1158
    .local v2, "apMap":Lcom/android/settings_ex/wifi/WifiSettings$Multimap;, "Lcom/android/settings_ex/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 1159
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_6

    .line 1161
    sget-boolean v11, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    if-eq v11, v10, :cond_0

    .line 1162
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 1163
    instance-of v10, p0, Landroid/app/Activity;

    if-eqz v10, :cond_0

    move-object v10, p0

    .line 1164
    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1167
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 1168
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v10, v3, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v10, :cond_2

    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v10, :cond_1

    .line 1171
    :cond_2
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1172
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1173
    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 1175
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    iget-object v10, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1161
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 1162
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1180
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 1181
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_c

    .line 1184
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->mScanResultAvailable:Z

    .line 1185
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_7

    .line 1186
    const-string v10, "WifiSettings"

    const-string v11, "no access point available..."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->mScanResultAvailable:Z

    .line 1191
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 1193
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1198
    const/4 v5, 0x0

    .line 1199
    .local v5, "found":Z
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1200
    .restart local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1201
    const/4 v5, 0x1

    goto :goto_4

    .line 1203
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_a
    if-nez v5, :cond_8

    .line 1204
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v0, p0, v8}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1205
    .restart local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 1206
    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 1208
    :cond_b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v10, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 1215
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v5    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1216
    return-object v1
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1220
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1224
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1225
    .local v2, "state":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1226
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreEmptyScan:Z

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateWifiSwitchAccordingToWifiBroadcast()V

    .line 1232
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->updateWifiState(I)V

    .line 1254
    .end local v2    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 1236
    :cond_2
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1237
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreEmptyScan:Z

    .line 1238
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1240
    :cond_3
    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1243
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1244
    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1245
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1247
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1248
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1249
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 1250
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1251
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1252
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1038
    packed-switch p1, :pswitch_data_0

    .line 1075
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setSwitchBarChecked(Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1077
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->updateSearchIndex(Z)V

    .line 1079
    :goto_0
    return-void

    .line 1040
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1043
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->setSwitchBarChecked(Z)V

    .line 1044
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1051
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->updateSearchIndex(Z)V

    goto :goto_0

    .line 1054
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1057
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setSwitchBarChecked(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1064
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1065
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->updateSearchIndex(Z)V

    .line 1070
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1071
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    goto :goto_0

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1013
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1014
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1015
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private removePreference()V
    .locals 5

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 447
    .local v1, "preferenceCount":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 448
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 449
    .local v2, "preferencewifi":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    .end local v2    # "preferencewifi":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createOneDefaultAccessPoint()V

    .line 462
    return-void
.end method

.method private setOffMessage()V
    .locals 5

    .prologue
    .line 1111
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1112
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f090373

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const v1, 0x7f09035c

    .line 1123
    .local v1, "resId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1124
    .local v0, "charSeq":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1133
    .end local v0    # "charSeq":Ljava/lang/CharSequence;
    .end local v1    # "resId":I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1135
    return-void

    .line 1121
    :cond_1
    const v1, 0x7f09035d

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v1, 0x1

    .line 849
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialog(I)V

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 855
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 856
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 858
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    .line 859
    return-void
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 903
    const v4, 0x7f090375

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 906
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 909
    .local v3, "wifiState":I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v4

    sput v4, Lcom/android/settings_ex/wifi/WifiSettings;->mVerboseLogging:I

    .line 911
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 982
    :pswitch_0
    const v4, 0x7f09034b

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 914
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->constructAccessPoints(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v1

    .line 924
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 932
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 933
    const v4, 0x7f090374

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 936
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 938
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 940
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 944
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_5
    sget-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->mScanResultAvailable:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreEmptyScan:Z

    if-eqz v4, :cond_8

    .line 945
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 946
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 947
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 948
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 957
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 958
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v5, 0x7f0900c5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 960
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v5, 0x7f0900c4

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 963
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 964
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v5, 0x7f0900fb

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 977
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    goto/16 :goto_0

    .line 986
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 987
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createOneDefaultAccessPoint()V

    goto/16 :goto_0

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1304
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1305
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 1331
    :cond_0
    return-void

    .line 1309
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 1311
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 1316
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1317
    if-eqz p1, :cond_2

    .line 1318
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 1322
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 1325
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1326
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 1327
    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1328
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 1322
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1313
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1082
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1084
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1085
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1086
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1087
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1088
    return-void
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 1334
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1335
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1339
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1354
    :goto_0
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1355
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 1356
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 1357
    :goto_1
    return-void

    .line 1341
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1345
    :pswitch_1
    const v1, 0x7f09034a

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1349
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 1350
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createOneDefaultAccessPoint()V

    goto :goto_0

    .line 1339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWifiSwitchAccordingToWifiBroadcast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1258
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 1259
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1260
    .local v1, "isWifiSwitchAlreadyChecked":Z
    const/4 v0, 0x0

    .line 1261
    .local v0, "isWifiEnablingOrEnabled":Z
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1262
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 1285
    const/4 v0, 0x0

    .line 1288
    :goto_0
    if-eq v1, v0, :cond_0

    .line 1289
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1297
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1299
    .end local v0    # "isWifiEnablingOrEnabled":Z
    .end local v1    # "isWifiSwitchAlreadyChecked":Z
    .end local v2    # "state":I
    :cond_1
    return-void

    .line 1270
    .restart local v0    # "isWifiEnablingOrEnabled":Z
    .restart local v1    # "isWifiSwitchAlreadyChecked":Z
    .restart local v2    # "state":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1271
    const/4 v0, 0x1

    .line 1272
    goto :goto_0

    .line 1275
    :pswitch_1
    const/4 v0, 0x0

    .line 1276
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v4, 0x7f0900c7

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1282
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 656
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 657
    .local v1, "wifiIsEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 659
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f090366

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 663
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 664
    const/4 v2, 0x3

    const v3, 0x7f0903e9

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 669
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f0907da

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 672
    const/4 v2, 0x5

    const v3, 0x7f09036d

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 674
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 675
    return-void

    .line 657
    nop

    :array_0
    .array-data 4
        0x7f010028
        0x7f01002a
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1463
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1459
    return-void
.end method

.method public createOneDefaultAccessPoint()V
    .locals 3

    .prologue
    .line 998
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 999
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1000
    new-instance v1, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1001
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->setSummary(I)V

    .line 1002
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDefaultAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1003
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1005
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1006
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 604
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    new-instance v1, Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V

    return-object v1
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1434
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1448
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 1451
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 1454
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1455
    :goto_1
    return-void

    .line 1440
    :cond_1
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1444
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1494
    .local v0, "wifiIsEnabled":Z
    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 1497
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1521
    const v0, 0x7f090a19

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1106
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1107
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 306
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 308
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "oem.ctaSwitch.support"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z

    .line 312
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 327
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 342
    new-instance v8, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 357
    if-eqz p1, :cond_0

    .line 358
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 359
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 360
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 368
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "wifi_enable_next_on_connect"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 370
    iget-boolean v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 374
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 375
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 377
    .local v3, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 382
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const v8, 0x7f060077

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 391
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 399
    const-string v8, "wifi_enable"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    .line 400
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 401
    const-string v8, "wifi_add_network"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    .line 402
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 404
    const-string v8, "wifi_advanced_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvanceSettings:Landroid/preference/Preference;

    .line 406
    new-instance v8, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 407
    new-instance v8, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 408
    const-string v8, "wifi_list"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    .line 409
    const-string v8, "preference_divider_line"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 410
    const-string v8, "preference_divider_line1"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 413
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 414
    const-string v8, "wifi_start_connect_ssid"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "ssid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 417
    .local v6, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 424
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 426
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v8, :cond_3

    move-object v0, v5

    .line 427
    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 428
    .local v0, "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v8, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    iget v8, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v8, :cond_3

    .line 430
    invoke-virtual {p0, v6, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 436
    .end local v0    # "accessPoint":Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v2    # "i":I
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_2
    return-void

    .line 417
    .restart local v2    # "i":I
    .restart local v5    # "preference":Landroid/preference/Preference;
    .restart local v6    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .restart local v7    # "ssid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1488
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1489
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 1490
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1373
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1374
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 793
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 794
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 822
    :goto_0
    return v0

    .line 796
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 822
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 798
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(I)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    .line 802
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 803
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 810
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 818
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 756
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 760
    .local v1, "preference":Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_3

    .line 761
    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v1    # "preference":Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 762
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 763
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 765
    const/4 v2, 0x7

    const v3, 0x7f09036e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 769
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_2

    .line 776
    :cond_1
    const/16 v2, 0x8

    const v3, 0x7f090370

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 778
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v2, v5, :cond_3

    .line 779
    const/16 v2, 0x9

    const v3, 0x7f090371

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 780
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 781
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    .line 784
    const/16 v2, 0xa

    const v3, 0x7f090372

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 789
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    .line 863
    packed-switch p1, :pswitch_data_0

    .line 891
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 865
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 866
    .local v0, "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    if-nez v0, :cond_1

    .line 867
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 868
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v0    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 870
    .restart local v0    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 872
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 876
    :cond_1
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 877
    new-instance v1, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 878
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 880
    .end local v0    # "ap":Lcom/android/settings_ex/wifi/AccessPoint;
    :pswitch_2
    new-instance v1, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 882
    :pswitch_3
    new-instance v1, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 884
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 885
    new-instance v1, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 887
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 863
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 648
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 589
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0903e2

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 695
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    :goto_0
    return v6

    .line 697
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 751
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 699
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 700
    goto :goto_0

    .line 716
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 717
    goto :goto_0

    .line 719
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v6, v10

    .line 722
    goto :goto_0

    .line 724
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v6, v10

    .line 727
    goto :goto_0

    .line 729
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_3

    .line 730
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 738
    goto :goto_0

    .line 734
    :cond_3
    const-class v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 740
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_4

    .line 741
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903e3

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 749
    goto :goto_0

    .line 745
    :cond_4
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0903e3

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 629
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 634
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 635
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1562
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_advanced_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    const/4 v0, 0x1

    .line 1568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 827
    instance-of v1, p2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 828
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 830
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 833
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 834
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_0

    .line 835
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 836
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 845
    :goto_0
    return v0

    .line 840
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 843
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 611
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 613
    .local v1, "state":I
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 614
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 618
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->handleWifiStateChanged(I)V

    .line 622
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 624
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 679
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 684
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 686
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 687
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 690
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 596
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 597
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 1508
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 1479
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1481
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 1517
    :cond_0
    return-void
.end method

.method public setSwitchBarChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1093
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mStateMachineEvent:Z

    .line 1094
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1095
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mStateMachineEvent:Z

    .line 1097
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 1101
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    const/4 v3, -0x1

    .line 1384
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1386
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 1387
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_0

    .line 1389
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(I)V

    .line 1426
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1427
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 1429
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 1430
    :goto_1
    return-void

    .line 1392
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 1393
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: WAPI_CERT Selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget v1, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-nez v1, :cond_3

    .line 1395
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090541

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0903cc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1401
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: Certificates are not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAPI: configController.mCert_Cnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1405
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1406
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Save"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1409
    :cond_4
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1414
    :cond_5
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v3, :cond_6

    .line 1415
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1419
    :cond_6
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1420
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1422
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
