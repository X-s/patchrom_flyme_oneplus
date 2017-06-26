.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    }
.end annotation


# static fields
.field private static CTA_DEBUG:Z = false

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

.field private static final SAVED_WIFI_NFC_DIALOG_STATE:Ljava/lang/String; = "wifi_nfc_dlg_state"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final SAVE_DIALOG_MODIFY_MODE:Ljava/lang/String; = "modify_mode"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field private static final WIFI_ADD_NETWORK:Ljava/lang/String; = "wifi_add_network"

.field public static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_ENABE:Ljava/lang/String; = "wifi_enable"

.field static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field private static final WRITE_NFC_DIALOG_ID:I = 0x6

.field private static savedNetworksExist:Z


# instance fields
.field private isAlertMark:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAdvanceSettings:Landroid/preference/Preference;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDlgModify:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mEnableWifi:Landroid/preference/SwitchPreference;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOpenSsid:Ljava/lang/String;

.field private mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

.field private mProgressHeader:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedAccesPoints:Landroid/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mToggleByClick:Z

.field private mTurnOn:Z

.field private mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiAddNetwork:Landroid/preference/Preference;

.field private mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiList:Landroid/preference/PreferenceCategory;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

.field private mgetTag:Z

.field private preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->CTA_DEBUG:Z

    .line 1364
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$9;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/WifiSettings$9;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 203
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mgetTag:Z

    .line 208
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    .line 449
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z

    .line 450
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    .line 459
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    .line 504
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 571
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiSettings;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;)Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiDisableRunnable:Lcom/android/settings_ex/wifi/WifiSettings$WifiDisableRunnable;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings_ex/wifi/WifiSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WifiSettings;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1160
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1161
    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1418
    if-nez p1, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return v7

    .line 1422
    :cond_1
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1428
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1429
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.software.device_admin"

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v2, :cond_2

    move v7, v8

    .line 1431
    goto :goto_0

    .line 1434
    :cond_2
    const/4 v3, 0x0

    .line 1435
    .local v3, "isConfigEligibleForLockdown":Z
    if-eqz v2, :cond_3

    .line 1436
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "deviceOwnerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1439
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 1441
    .local v1, "deviceOwnerUid":I
    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_4

    move v3, v7

    .line 1447
    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1452
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    move v4, v7

    .line 1455
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_2
    if-eqz v4, :cond_0

    move v7, v8

    goto :goto_0

    .end local v4    # "isLockdownFeatureEnabled":Z
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .restart local v1    # "deviceOwnerUid":I
    :cond_4
    move v3, v8

    .line 1441
    goto :goto_1

    .end local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    .end local v1    # "deviceOwnerUid":I
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    move v4, v8

    .line 1452
    goto :goto_2

    .line 1442
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v0    # "deviceOwnerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1210
    :cond_0
    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 281
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z

    if-nez v0, :cond_3

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->stopTracking()V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->startTracking()V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setWifiEnableSummary()V

    .line 248
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0146

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 261
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mToggleByClick:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1404
    invoke-static {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1090
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1091
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1092
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private releaseAccessPointListener()V
    .locals 5

    .prologue
    .line 326
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 327
    .local v2, "preferenceCount":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 328
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/AccessPointPreference;

    .line 329
    .local v3, "preferencewifi":Lcom/android/settings_ex/wifi/AccessPointPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v0

    .line 330
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-eqz v0, :cond_0

    .line 331
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V

    .line 327
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 334
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v3    # "preferencewifi":Lcom/android/settings_ex/wifi/AccessPointPreference;
    :cond_1
    return-void
.end method

.method private removePreference()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    return-void
.end method

.method private setOffMessage()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1105
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1109
    :cond_0
    const v6, 0x7f0c04f7

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1117
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1118
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "wifi_scan_always_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1121
    .local v4, "wifiScanningMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v4, :cond_3

    .line 1125
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1146
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 1147
    .local v0, "boldSpan":Landroid/text/Spannable;
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030044

    invoke-direct {v6, v7, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v0, v6, v5, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1152
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    goto :goto_0

    .end local v0    # "boldSpan":Landroid/text/Spannable;
    .end local v4    # "wifiScanningMode":Z
    :cond_2
    move v4, v5

    .line 1118
    goto :goto_1

    .line 1128
    .restart local v4    # "wifiScanningMode":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1130
    const-string v6, "\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const v6, 0x7f0c04e0

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1132
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$8;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-static {v6, v2, v7}, Lcom/android/settings_ex/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z

    goto :goto_2
.end method

.method private setWifiEnableSummary()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0144

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V
    .locals 13
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 901
    if-eqz p1, :cond_1

    .line 902
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 903
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 905
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 906
    .local v7, "userId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 907
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 908
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 912
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 913
    .local v5, "label":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 914
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 919
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 921
    .local v2, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c04be

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v12}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 941
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "userId":I
    :goto_1
    return-void

    .line 931
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v8, :cond_2

    .line 932
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialog(I)V

    .line 933
    iput-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 937
    :cond_2
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 938
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 940
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 916
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "userId":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 669
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v1

    .line 670
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

    .line 672
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    const v3, 0x7f0c04ea

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 675
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-eqz v2, :cond_0

    .line 676
    const/4 v2, 0x3

    const v3, 0x7f0c055b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 681
    :cond_0
    const/4 v2, 0x6

    const v3, 0x7f0c0978

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 684
    const/4 v2, 0x5

    const v3, 0x7f0c04f1

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 686
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 687
    return-void

    .line 670
    nop

    :array_0
    .array-data 4
        0x7f010040
        0x7f010042
    .end array-data
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1300
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1301
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1295
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1296
    return-void
.end method

.method createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 621
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
    .line 1268
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1269
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 1287
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1290
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1291
    :goto_1
    return-void

    .line 1278
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 1326
    .local v0, "wifiIsEnabled":Z
    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 1329
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1351
    const v0, 0x7f0c0bc6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 691
    const/16 v0, 0x67

    return v0
.end method

.method protected initEmptyView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1099
    .local v0, "emptyView":Landroid/widget/TextView;
    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1101
    return-object v0
.end method

.method public onAccessPointChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1356
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->refresh()V

    .line 1357
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 996
    const v9, 0x7f0c04f9

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 999
    :cond_2
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 1001
    .local v8, "wifiState":I
    packed-switch v8, :pswitch_data_0

    .line 1083
    :goto_1
    :pswitch_0
    sget-boolean v11, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v12}, Lcom/android/settings_exlib/wifi/WifiTracker;->doSavedNetworksExist()Z

    move-result v12

    if-eq v11, v12, :cond_0

    .line 1084
    sget-boolean v11, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v11, :cond_8

    :goto_2
    sput-boolean v9, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 1085
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1005
    :pswitch_1
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v11, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1007
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v11}, Lcom/android/settings_exlib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 1010
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1011
    const/4 v2, 0x0

    .line 1012
    .local v2, "hasAvailableAccessPoints":Z
    const/4 v4, 0x0

    .line 1013
    .local v4, "index":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 1015
    .local v0, "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 1016
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-boolean v11, v0, Lcom/android/settings_exlib/wifi/AccessPoint;->foundInScanResult:Z

    if-nez v11, :cond_4

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 1020
    :cond_4
    const/4 v2, 0x1

    .line 1021
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-boolean v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mgetTag:Z

    if-nez v11, :cond_5

    .line 1022
    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    .line 1024
    .local v6, "pref":Landroid/preference/Preference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1027
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v4, v5

    .line 1028
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 1030
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_5
    new-instance v7, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-direct {v7, v0, v11, v12, v10}, Lcom/android/settings_ex/wifi/AccessPointPreference;-><init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 1032
    .local v7, "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v7, v4}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setOrder(I)V

    .line 1033
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v11

    if-eqz v11, :cond_6

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {p0, v11, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1038
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 1042
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1043
    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setListener(Lcom/android/settings_exlib/wifi/AccessPoint$AccessPointListener;)V

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 1046
    .end local v0    # "accessPoint":Lcom/android/settings_exlib/wifi/AccessPoint;
    .end local v7    # "preference":Lcom/android/settings_ex/wifi/AccessPointPreference;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1047
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 1073
    .end local v1    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings_exlib/wifi/AccessPoint;>;"
    .end local v2    # "hasAvailableAccessPoints":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setOffMessage()V

    .line 1074
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 1077
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    move v9, v10

    .line 1084
    goto/16 :goto_2

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 338
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 339
    new-instance v0, Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_exlib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 343
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 359
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 374
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 390
    if-eqz p1, :cond_1

    .line 391
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 392
    const-string v0, "modify_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 393
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 398
    :cond_0
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 408
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 411
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 415
    .local v7, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    .line 416
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 418
    .local v8, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 423
    .end local v7    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v8    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->initEmptyView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 424
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 425
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 428
    const-string v0, "wifi_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiEnableListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 430
    const-string v0, "wifi_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiAddNetwork:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->preferenceWifiAddNetworkListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 433
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setWifiEnableSummary()V

    .line 434
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1317
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1320
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V

    .line 1322
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 1214
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1215
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onConnectedChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1180
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1181
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0144

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTurnOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableWifi:Landroid/preference/SwitchPreference;

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 837
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 838
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    .line 840
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 868
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 842
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_2

    .line 846
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 847
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 849
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 850
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 855
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    .line 859
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 860
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 864
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 303
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mContext:Landroid/content/Context;

    .line 305
    const-string v0, "wifi_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiList:Landroid/preference/PreferenceCategory;

    .line 306
    new-instance v0, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 307
    new-instance v0, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ui/OPPreferenceDivider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 308
    const-string v0, "preference_divider_line"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 309
    const-string v0, "preference_divider_line1"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider1:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mPreferenceDivider:Lcom/android/settings_ex/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 312
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 314
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 316
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 788
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 792
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    if-eqz v3, :cond_1

    .line 793
    check-cast v2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    .end local v2    # "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 795
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 796
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 797
    const/4 v3, 0x7

    const v4, 0x7f0c04f2

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 803
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    .line 807
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 814
    :cond_3
    const/16 v3, 0x8

    const v4, 0x7f0c04f4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 817
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    const/16 v3, 0x9

    const v4, 0x7f0c04f5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 820
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 822
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    const/16 v3, 0xa

    const v4, 0x7f0c04f6

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 945
    packed-switch p1, :pswitch_data_0

    .line 982
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 947
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 948
    .local v3, "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 950
    new-instance v3, Lcom/android/settings_exlib/wifi/AccessPoint;

    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings_exlib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 952
    .restart local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 958
    :cond_0
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 959
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    .local v7, "hideForget":Z
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_exlib/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 964
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .end local v7    # "hideForget":Z
    :cond_2
    move v7, v6

    .line 959
    goto :goto_1

    .line 966
    .end local v3    # "ap":Lcom/android/settings_exlib/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 968
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 970
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 971
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    .line 980
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 976
    new-instance v0, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_2

    .line 945
    nop

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
    .line 658
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->addOptionsMenuItems(Landroid/view/Menu;)V

    .line 662
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 321
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->releaseAccessPointListener()V

    .line 322
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 323
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 600
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroyView()V

    .line 602
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 605
    :cond_0
    return-void
.end method

.method public onLevelChanged(Lcom/android/settings_exlib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;

    .prologue
    .line 1361
    invoke-virtual {p1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1362
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0c0554

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return v6

    .line 724
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 782
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 726
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 727
    goto :goto_0

    .line 737
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 738
    goto :goto_0

    .line 740
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 742
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->forceScan()V

    move v6, v10

    .line 743
    goto :goto_0

    .line 745
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_1
    move v6, v10

    .line 748
    goto :goto_0

    .line 750
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_2

    .line 751
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

    .line 766
    goto :goto_0

    .line 756
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 768
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/SettingsActivity;

    if-eqz v0, :cond_3

    .line 769
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0555

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 780
    goto :goto_0

    .line 773
    :cond_3
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0555

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 724
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
    .line 646
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPause()V

    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->stopTracking()V

    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 653
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 874
    instance-of v1, p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    if-eqz v1, :cond_3

    .line 875
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPointPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 878
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 882
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    if-nez v1, :cond_0

    .line 883
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->savedNetworksExist:Z

    .line 884
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 897
    :goto_0
    return v0

    .line 887
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 889
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 891
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    .line 892
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_exlib/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 895
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 627
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 628
    const-string v3, "dummy"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 630
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "wifi_start_connect_ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mgetTag:Z

    .line 632
    const-string v3, "wifi_start_connect_ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 633
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAccessPointsChanged()V

    .line 635
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v3, :cond_1

    .line 636
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 638
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/WifiTracker;->startTracking()V

    .line 639
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 640
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 641
    .local v2, "state":I
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->handleWifiStateChanged(I)V

    .line 642
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 696
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 699
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const-string v1, "edit_mode"

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 701
    const-string v1, "modify_mode"

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgModify:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 702
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 703
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 704
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 705
    const-string v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v0, "savedState":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 713
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 715
    .end local v0    # "savedState":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onStart()V

    .line 612
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings_ex/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 613
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 296
    const v1, 0x7f040156

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    .line 298
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1173
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1176
    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->pauseScanning()V

    .line 1339
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1310
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->removePreference()V

    .line 1311
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1347
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressHeader:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1168
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings_ex/wifi/WifiConfigController;

    .prologue
    .line 1225
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1227
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 1264
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiTracker:Lcom/android/settings_exlib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/WifiTracker;->resumeScanning()V

    .line 1265
    :goto_1
    return-void

    .line 1232
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1234
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: WAPI_CERT Selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget v1, p1, Lcom/android/settings_ex/wifi/WifiConfigController;->mCert_Cnt:I

    if-nez v1, :cond_2

    .line 1236
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c053e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1242
    const-string v1, "WifiSettings"

    const-string v2, "WAPI: Certificates are not installed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
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

    .line 1246
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1247
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Save"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1250
    :cond_3
    const-string v1, "WifiSettings"

    const-string v2, "WAPI CERT issue Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1255
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isModify()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1256
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1258
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1259
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 1260
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method
