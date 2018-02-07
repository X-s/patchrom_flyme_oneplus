.class public Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.super Lcom/android/settings_ex/RestrictedSettingsFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;,
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;,
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;,
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# static fields
.field private static final AUTO_CONNECT_DEFAULT_VALUE:I = 0x0

.field private static final AUTO_CONNECT_DISABLE:I = 0x1

.field private static final AUTO_CONNECT_ENABLED:I = 0x0

.field private static final CELLULAR_TO_WLAN_CONNECT_TYPE:Ljava/lang/String; = "cellular_to_wlan_type"

.field private static final CELLULAR_TO_WLAN_CONNECT_TYPE_ASK:I = 0x2

.field private static final CELLULAR_TO_WLAN_CONNECT_TYPE_AUTO:I = 0x0

.field private static final CELLULAR_TO_WLAN_CONNECT_TYPE_MANUAL:I = 0x1

.field private static final CELLULAR_TO_WLAN_HINT:Ljava/lang/String; = "cellular_to_wlan_hint"

.field private static final CELLULAR_WLAN_DEFAULT_VALUE:I = 0x0

.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/misc/wapi_certificate"

.field private static final DO_NOT_NOTIFY_USER:I = -0x1

.field private static final KEY_AUTO_CONNECT_ENABLE:Ljava/lang/String; = "auto_connect_type"

.field private static final KEY_CELLULAR_TO_WLAN:Ljava/lang/String; = "cellular_to_wlan"

.field private static final KEY_CELLULAR_TO_WLAN_HINT:Ljava/lang/String; = "cellular_to_wlan_hint"

.field private static final KEY_CONNECT_NOTIFY:Ljava/lang/String; = "notify_ap_connected"

.field private static final KEY_CURRENT_GATEWAY:Ljava/lang/String; = "current_gateway"

.field private static final KEY_CURRENT_NETMASK:Ljava/lang/String; = "current_netmask"

.field private static final KEY_ENABLE_HS2:Ljava/lang/String; = "enable_hs2"

.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_INSTALL_CREDENTIALS:Ljava/lang/String; = "install_credentials"

.field private static final KEY_PRIORITY_SETTINGS:Ljava/lang/String; = "wifi_priority_settings"

.field private static final KEY_WAPI_CERT_INSTALL:Ljava/lang/String; = "wapi_cert_install"

.field private static final KEY_WAPI_CERT_UNINSTALL:Ljava/lang/String; = "wapi_cert_uninstall"

.field private static final KEY_WIFI_DIRECT:Ljava/lang/String; = "wifi_direct"

.field private static final KEY_WLAN_TO_CELLULAR_HINT:Ljava/lang/String; = "wlan_to_cellular_hint"

.field private static final KEY_WPS_PIN:Ljava/lang/String; = "wps_pin_entry"

.field private static final KEY_WPS_PUSH:Ljava/lang/String; = "wps_push_button"

.field private static final NOTIFY_USER:I = 0x0

.field private static final NOTIFY_USER_CONNECT:Ljava/lang/String; = "notify_user_when_connect_cmcc"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"

.field private static final WAPI_INSTALL_DIALOG_ID:I = 0x3

.field private static final WAPI_UNINSTALL_DIALOG_ID:I = 0x4

.field private static final WIFI_AUTO_CONNECT_TYPE:Ljava/lang/String; = "wifi_auto_connect_type"

.field private static final WIFI_HS2_DISABLED:I = 0x0

.field private static final WIFI_HS2_ENABLED:I = 0x1

.field private static final WLAN_TO_CELLULAR_HINT:Ljava/lang/String; = "wlan_to_cellular_hint"


# instance fields
.field frequencyPref:Landroid/support/v7/preference/ListPreference;

.field private isCertificate:Z

.field private mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

.field private mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

.field private mFrequencyPrefObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mUnavailable:Z

.field private mUnstallCertPreference:Landroid/support/v7/preference/Preference;

.field private mWapiCertInstall:Landroid/support/v7/preference/Preference;

.field private mWapiCertMgmtDialog:Landroid/app/Dialog;

.field private mWapiCertUninstall:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 734
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    .line 159
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFrequencyPrefObserver:Landroid/database/ContentObserver;

    .line 510
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method private getCellularToWlanValue()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    return v2

    .line 680
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cellular_to_wlan_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private ifNotifyConnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 662
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 661
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initPreferences()V
    .locals 17

    .prologue
    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 254
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v14, "com.android.certinstaller"

    .line 256
    const-string/jumbo v15, "com.android.certinstaller.CertInstallerMain"

    .line 255
    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v14, "install_as_uid"

    const/16 v15, 0x3f2

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string/jumbo v14, "install_credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 259
    .local v6, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 261
    const-string/jumbo v14, "enable_hs2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 262
    .local v2, "enableHs2":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 263
    const v15, 0x11200d0

    .line 262
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 264
    new-instance v14, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v2, v14}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 277
    const-string/jumbo v15, "wifi_hotspot2_enabled"

    const/16 v16, 0x0

    .line 276
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 277
    const/4 v15, 0x1

    .line 276
    if-ne v14, v15, :cond_a

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v2, v14}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 286
    :cond_0
    :goto_1
    new-instance v9, Landroid/content/Intent;

    .line 287
    const-class v14, Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;

    .line 286
    invoke-direct {v9, v1, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v9, "wifiDirectIntent":Landroid/content/Intent;
    const-string/jumbo v14, "wifi_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 290
    .local v10, "wifiDirectPref":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_1

    .line 291
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 297
    :cond_1
    const-string/jumbo v14, "wps_push_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    .line 298
    .local v13, "wpsPushPref":Landroid/support/v7/preference/Preference;
    new-instance v14, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 307
    const-string/jumbo v14, "wps_pin_entry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    .line 308
    .local v12, "wpsPinPref":Landroid/support/v7/preference/Preference;
    new-instance v14, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v12, v14}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 317
    const-string/jumbo v14, "frequency_band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 319
    const-string/jumbo v15, "airplane_mode_on"

    const/16 v16, 0x0

    .line 318
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_c

    const/4 v4, 0x1

    .line 320
    .local v4, "isAirplaneMode":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    if-nez v14, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v4}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_d

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V

    .line 346
    :cond_3
    :goto_3
    const-string/jumbo v14, "wifi_priority_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 347
    .local v7, "prioritySettingPref":Landroid/support/v7/preference/Preference;
    if-eqz v7, :cond_10

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 356
    :cond_4
    :goto_4
    const-string/jumbo v14, "auto_connect_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/CheckBoxPreference;

    .line 355
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v14, :cond_5

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0019

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isAutoConnectEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    :cond_5
    :goto_5
    const-string/jumbo v14, "cellular_to_wlan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/ListPreference;

    .line 366
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_6

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getCellularToWlanValue()I

    move-result v8

    .line 371
    .local v8, "value":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    .end local v8    # "value":I
    :cond_6
    :goto_6
    const-string/jumbo v14, "wlan_to_cellular_hint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/CheckBoxPreference;

    .line 381
    .local v11, "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v11, :cond_7

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c001d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isWlanToCellHintEnable()Z

    move-result v14

    invoke-virtual {v11, v14}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 391
    :cond_7
    :goto_7
    const-string/jumbo v14, "notify_ap_connected"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/CheckBoxPreference;

    .line 392
    .local v5, "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    if-eqz v5, :cond_8

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c001b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->ifNotifyConnect()Z

    move-result v14

    invoke-virtual {v5, v14}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 401
    :cond_8
    :goto_8
    const-string/jumbo v14, "cellular_to_wlan_hint"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v14, :cond_9

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCellularToWlanHintEnable()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 252
    :cond_9
    :goto_9
    return-void

    .line 276
    .end local v4    # "isAirplaneMode":Z
    .end local v5    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v7    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    .end local v9    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v10    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .end local v11    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    .end local v12    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .end local v13    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 280
    :cond_b
    if-eqz v2, :cond_0

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 318
    .restart local v9    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v10    # "wifiDirectPref":Landroid/support/v7/preference/Preference;
    .restart local v12    # "wpsPinPref":Landroid/support/v7/preference/Preference;
    .restart local v13    # "wpsPushPref":Landroid/support/v7/preference/Preference;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "isAirplaneMode":Z
    goto/16 :goto_2

    .line 327
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 330
    const-string/jumbo v15, "wifi_frequency_band"

    const/16 v16, 0x0

    .line 329
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 331
    .restart local v8    # "value":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_e

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V

    goto/16 :goto_3

    .line 335
    :cond_e
    const-string/jumbo v14, "AdvancedWifiSettings"

    const-string/jumbo v15, "Failed to fetch frequency band"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 338
    .end local v8    # "value":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_3

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->frequencyPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 352
    .restart local v7    # "prioritySettingPref":Landroid/support/v7/preference/Preference;
    :cond_10
    const-string/jumbo v14, "AdvancedWifiSettings"

    const-string/jumbo v15, "Fail to get priority pref..."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 362
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    .line 375
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_6

    .line 386
    .restart local v11    # "wlanToCellularHintPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_7

    .line 397
    .restart local v5    # "notifyConnectedApPref":Landroid/support/v7/preference/CheckBoxPreference;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8

    .line 407
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_9
.end method

.method private initWapiCertInstallPreference()V
    .locals 3

    .prologue
    .line 441
    const-string/jumbo v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 442
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 443
    const-string/jumbo v1, "AdvancedWifiSettings"

    const-string/jumbo v2, "initWapiCertInstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 440
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string/jumbo v1, "AdvancedWifiSettings"

    const-string/jumbo v2, "initWapiCertInstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWapiCertUninstallPreference()V
    .locals 2

    .prologue
    .line 451
    const-string/jumbo v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/support/v7/preference/Preference;

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/support/v7/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 454
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "initWapiCertUninstallPreference pref != null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 450
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "initWapiCertUninstallPreference pref == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 667
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 666
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCellularToWlanHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 646
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 645
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWlanToCellHintEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 651
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 650
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 525
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 525
    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 527
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 538
    const v3, 0x7f0e0984

    .line 537
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 542
    .local v1, "message":Ljava/lang/CharSequence;
    :goto_0
    const v3, 0x7f0e027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 541
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 530
    .local v1, "message":Ljava/lang/CharSequence;
    :pswitch_0
    const v3, 0x7f0e0985

    .line 529
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 534
    .local v1, "message":Ljava/lang/CharSequence;
    :pswitch_1
    const v3, 0x7f0e0986

    .line 533
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "message":Ljava/lang/CharSequence;
    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setApConnectedNotify(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 702
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 703
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 704
    const-string/jumbo v2, "notify_user_when_connect_cmcc"

    .line 703
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    return-void

    .line 702
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setAutoConnectTypeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 671
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 672
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 673
    const-string/jumbo v2, "wifi_auto_connect_type"

    .line 672
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    return-void

    .line 671
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setCellToWlanType(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e1065

    .line 713
    const/4 v3, 0x0

    .line 712
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCellularToWlanHintEnable(Z)V
    .locals 3
    .param p1, "needNotify"    # Z

    .prologue
    .line 696
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 697
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 698
    const-string/jumbo v2, "cellular_to_wlan_hint"

    .line 697
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    return-void

    .line 696
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private setWlanToCellularHintEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 655
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 656
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 657
    const-string/jumbo v2, "wlan_to_cellular_hint"

    .line 656
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 654
    return-void

    .line 655
    .end local v0    # "defaultValue":I
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private showWapiCertInstallDialog()V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, "dialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 489
    const v1, 0x7f0e027a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(I)V

    .line 490
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertMgmtDialog:Landroid/app/Dialog;

    .line 491
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setRefreshAdvance(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;)V

    .line 492
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->show()V

    .line 486
    return-void
.end method

.method private showWapiCertUninstallDialog()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 497
    .local v0, "dialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 498
    const v1, 0x7f0e027e

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(I)V

    .line 499
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertMgmtDialog:Landroid/app/Dialog;

    .line 500
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setRefreshAdvance(Lcom/android/settings_ex/wifi/WapiCertMgmtDialog$RefreshAdvance;)V

    .line 501
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->show()V

    .line 495
    return-void
.end method

.method private updateAutoConnectPref(Z)V
    .locals 1
    .param p1, "isAutoMode"    # Z

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mAutoConnectEnablePref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 728
    return-void
.end method

.method private updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    return-void
.end method

.method private updateCellularToWifiPrefs(Z)V
    .locals 3
    .param p1, "isAutoEnabled"    # Z

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 721
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 723
    .local v0, "defaultValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cellular_to_wlan_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 717
    return-void

    .line 722
    .end local v0    # "defaultValue":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "defaultValue":I
    goto :goto_0
.end method

.method private updateCellularToWlanHintPref(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanHintPref:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 692
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 690
    return-void
.end method

.method private updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/support/v7/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    return-void
.end method


# virtual methods
.method public certificationExist()V
    .locals 7

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 548
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/data/misc/wapi_certificate"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v2, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 554
    return-void

    .line 557
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 558
    .local v1, "certificateList":[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 559
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    .line 558
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 562
    :cond_1
    if-nez v5, :cond_2

    .line 563
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v1    # "certificateList":[Ljava/io/File;
    .end local v5    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 565
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e076d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 196
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 571
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 572
    const/16 v0, 0x38

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showWapiCertUninstallDialog()V

    .line 569
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnavailable:Z

    .line 178
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFrequencyPrefObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 189
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    return-void

    .line 180
    :cond_0
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 182
    const-string/jumbo v0, "AdvancedWifiSettings"

    const-string/jumbo v1, "Oncreate findpref."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/support/v7/preference/Preference;

    .line 184
    const-string/jumbo v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 248
    invoke-super {p0, p1}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 237
    :pswitch_0
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "wapiDialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 239
    const v1, 0x7f0e027a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(I)V

    .line 240
    return-object v0

    .line 243
    .end local v0    # "wapiDialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v0    # "wapiDialog":Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setMode(I)V

    .line 245
    const v1, 0x7f0e027e

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WapiCertMgmtDialog;->setTitle(I)V

    .line 246
    return-object v0

    .line 235
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onDestroy()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFrequencyPrefObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 583
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 584
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v6, "frequency_band"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 589
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 590
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x1

    invoke-virtual {v6, v5, v9}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 591
    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/support/v7/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v5    # "value":I
    :cond_0
    const-string/jumbo v6, "wlan_to_cellular_hint"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p2

    .line 601
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 602
    .local v1, "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setWlanToCellularHintEnable(Z)V

    .line 605
    .end local v1    # "checked":Z
    :cond_1
    const-string/jumbo v6, "auto_connect_type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    .line 606
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 607
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setAutoConnectTypeEnabled(Z)V

    .line 608
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellularToWifiPrefs(Z)V

    .line 609
    if-nez v1, :cond_2

    .line 610
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 614
    .end local v1    # "checked":Z
    :cond_2
    const-string/jumbo v6, "cellular_to_wlan"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 615
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 616
    .restart local v5    # "value":I
    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setCellToWlanType(I)V

    .line 617
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 618
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mCellularToWlanPref:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v6, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellToWlanSummary(Landroid/support/v7/preference/Preference;I)V

    .line 619
    if-nez v5, :cond_6

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateAutoConnectPref(Z)V

    .line 620
    if-eqz v5, :cond_3

    .line 621
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateCellularToWlanHintPref(Z)V

    .line 625
    .end local v5    # "value":I
    :cond_3
    const-string/jumbo v6, "notify_ap_connected"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p2

    .line 626
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 627
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setApConnectedNotify(Z)V

    .line 630
    .end local v1    # "checked":Z
    :cond_4
    const-string/jumbo v6, "cellular_to_wlan_hint"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 631
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 632
    .restart local v1    # "checked":Z
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->setCellularToWlanHintEnable(Z)V

    .line 633
    if-nez v1, :cond_5

    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 634
    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 640
    .end local v1    # "checked":Z
    :cond_5
    return v7

    .line 592
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 593
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v6, 0x7f0e033e

    invoke-static {v2, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 595
    return v8

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "value":I
    :cond_6
    move v6, v8

    .line 619
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceClick key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-nez v1, :cond_0

    return v6

    .line 465
    :cond_0
    const-string/jumbo v2, "wapi_cert_install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    const-string/jumbo v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceClick key 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v2, v3, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 469
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 470
    return v5

    .line 472
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showWapiCertInstallDialog()V

    .line 483
    :cond_2
    :goto_0
    return v6

    .line 475
    :cond_3
    const-string/jumbo v2, "wapi_cert_uninstall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    const-string/jumbo v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceClick key 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v2, 0x38

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->runKeyguardConfirmation(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x14

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings_ex/RestrictedSettingsFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->certificationExist()V

    .line 213
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWapiCertInstallPreference()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWapiCertUninstallPreference()V

    .line 208
    :cond_0
    return-void
.end method

.method public refreashAdvance()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 505
    return-void
.end method
