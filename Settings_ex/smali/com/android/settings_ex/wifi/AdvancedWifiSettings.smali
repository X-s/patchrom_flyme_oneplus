.class public Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$WpsFragment;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERTIFICATE_PATH:Ljava/lang/String; = "/data/wapi_certificate"

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_INSTALL_CREDENTIALS:Ljava/lang/String; = "install_credentials"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_scan_always_available"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_WAPI_CERT_INSTALL:Ljava/lang/String; = "wapi_cert_install"

.field private static final KEY_WAPI_CERT_UNINSTALL:Ljava/lang/String; = "wapi_cert_uninstall"

.field private static final KEY_WIFI_ASSISTANT:Ljava/lang/String; = "wifi_assistant"

.field private static final KEY_WIFI_DIRECT:Ljava/lang/String; = "wifi_direct"

.field private static final KEY_WPS_PIN:Ljava/lang/String; = "wps_pin_entry"

.field private static final KEY_WPS_PUSH:Ljava/lang/String; = "wps_push_button"

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"

.field private static final WAPI_INSTALL_DIALOG_ID:I = 0x3

.field private static final WAPI_UNINSTALL_DIALOG_ID:I = 0x4


# instance fields
.field private isCertificate:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnstallCertPreference:Landroid/preference/Preference;

.field private mWapiCertInstall:Landroid/preference/Preference;

.field private mWapiCertMgmtDialog:Landroid/app/Dialog;

.field private mWapiCertUninstall:Landroid/preference/Preference;

.field private mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 100
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    .line 543
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    return v0
.end method

.method private initPreferences()V
    .locals 18

    .prologue
    .line 202
    const-string v15, "notify_open_networks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 204
    .local v4, "notifyOpenNetworks":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_networks_available_notification_on"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_0
    invoke-virtual {v4, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v15

    invoke-virtual {v4, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 208
    const-string v15, "wifi_scan_always_available"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 209
    .local v6, "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    if-eqz v6, :cond_0

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_scan_always_enabled"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v6, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v15, "android.credentials.INSTALL_AS_USER"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, "intent":Landroid/content/Intent;
    const-string v15, "com.android.certinstaller"

    const-string v16, "com.android.certinstaller.CertInstallerMain"

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v15, "install_as_uid"

    const/16 v16, 0x3f2

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v15, "install_credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 220
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 223
    .local v1, "context":Landroid/content/Context;
    const-string v15, "wifi_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings_ex/AppListSwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    .line 224
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 226
    .local v7, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-nez v15, :cond_7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    .line 233
    :cond_1
    :goto_2
    new-instance v11, Landroid/content/Intent;

    const-class v15, Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;

    invoke-direct {v11, v1, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v11, "wifiDirectIntent":Landroid/content/Intent;
    const-string v15, "wifi_direct"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 236
    .local v12, "wifiDirectPref":Landroid/preference/Preference;
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 239
    const-string v15, "wps_push_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 240
    .local v14, "wpsPushPref":Landroid/preference/Preference;
    new-instance v15, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 249
    const-string v15, "wps_pin_entry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 250
    .local v13, "wpsPinPref":Landroid/preference/Preference;
    new-instance v15, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v13, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    const-string v15, "frequency_band"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 259
    .local v2, "frequencyPref":Landroid/preference/ListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "oem.5gwifi.support"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 261
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v10

    .line 264
    .local v10, "value":I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_8

    .line 265
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 283
    .end local v10    # "value":I
    :cond_2
    :goto_3
    const-string v15, "sleep_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 284
    .local v8, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v8, :cond_4

    .line 285
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 286
    const v15, 0x7f0a001f

    invoke-virtual {v8, v15}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 288
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "wifi_sleep_policy"

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 292
    .restart local v10    # "value":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, "stringValue":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 296
    .end local v9    # "stringValue":Ljava/lang/String;
    .end local v10    # "value":I
    :cond_4
    return-void

    .line 204
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pref":Landroid/preference/Preference;
    .end local v6    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    .end local v7    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v8    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v11    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v12    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v13    # "wpsPinPref":Landroid/preference/Preference;
    .end local v14    # "wpsPushPref":Landroid/preference/Preference;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v6    # "scanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 229
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "pref":Landroid/preference/Preference;
    .restart local v7    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    if-eqz v15, :cond_1

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 268
    .restart local v2    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v10    # "value":I
    .restart local v11    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v12    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v13    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v14    # "wpsPushPref":Landroid/preference/Preference;
    :cond_8
    const-string v15, "AdvancedWifiSettings"

    const-string v16, "Failed to fetch frequency band"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 271
    .end local v10    # "value":I
    :cond_9
    if-eqz v2, :cond_2

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 277
    :cond_a
    if-eqz v2, :cond_2

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private initWapiCertInstallPreference()V
    .locals 3

    .prologue
    .line 455
    const-string v1, "wapi_cert_install"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 456
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 457
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref != null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "initWapiCertInstallPreference pref == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWapiCertUninstallPreference()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "initWapiCertUninstallPreference pref != null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUnstallCertPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "initWapiCertUninstallPreference pref == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 300
    .local v0, "count":I
    new-array v3, v0, [Ljava/lang/String;

    .line 301
    .local v3, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 302
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 303
    .local v4, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v4, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    goto :goto_0

    .line 306
    .end local v4    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/settings_ex/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 9

    .prologue
    const v8, 0x7f0c0641

    const/4 v7, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 418
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 420
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 421
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 422
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 426
    const-string v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 427
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "ipAddress":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 431
    return-void

    .line 421
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 422
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 558
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 560
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 570
    const v3, 0x7f0c0759

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 574
    :goto_0
    const v3, 0x7f0c0543

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 562
    :pswitch_0
    const v3, 0x7f0c075a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 564
    goto :goto_0

    .line 566
    :pswitch_1
    const v3, 0x7f0c075b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 568
    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showWapiCertInstallDialog()V
    .locals 2

    .prologue
    .line 520
    new-instance v0, Lcom/android/settings_ex/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "dialog":Lcom/android/settings_ex/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMode(I)V

    .line 522
    const v1, 0x7f0c0135

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(I)V

    .line 523
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertMgmtDialog:Landroid/app/Dialog;

    .line 524
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setRefreshAdvance(Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;)V

    .line 525
    invoke-virtual {v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->show()V

    .line 526
    return-void
.end method

.method private showWapiCertUninstallDialog()V
    .locals 2

    .prologue
    .line 529
    new-instance v0, Lcom/android/settings_ex/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "dialog":Lcom/android/settings_ex/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMode(I)V

    .line 531
    const v1, 0x7f0c0136

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(I)V

    .line 532
    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertMgmtDialog:Landroid/app/Dialog;

    .line 533
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setRefreshAdvance(Lcom/android/settings_ex/WapiCertMgmtDialog$RefreshAdvance;)V

    .line 534
    invoke-virtual {v0}, Lcom/android/settings_ex/WapiCertMgmtDialog;->show()V

    .line 535
    return-void
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 311
    if-eqz p2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a001f

    .line 315
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 317
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 319
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :goto_2
    return-void

    .line 313
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a001d

    goto :goto_0

    .line 316
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    .restart local v2    # "summaryArrayResId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string v4, "wapi_cert_install"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 327
    const-string v4, "wapi_cert_uninstall"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 330
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public certificationExist()V
    .locals 6

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 581
    .local v3, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v0, "cerString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/wapi_certificate"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v2, "certificatePath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 591
    .local v1, "certificateList":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 592
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z

    .line 591
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 595
    :cond_2
    if-nez v4, :cond_0

    .line 596
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isCertificate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v1    # "certificateList":[Ljava/io/File;
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 156
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 604
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 605
    const/16 v0, 0x38

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showWapiCertUninstallDialog()V

    .line 609
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 141
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "Oncreate findpref."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "wapi_cert_install"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertInstall:Landroid/preference/Preference;

    .line 143
    const-string v0, "wapi_cert_uninstall"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWapiCertUninstall:Landroid/preference/Preference;

    .line 145
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 180
    :pswitch_0
    new-instance v0, Lcom/android/settings_ex/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "wapiDialog":Lcom/android/settings_ex/WapiCertMgmtDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMode(I)V

    .line 182
    const v1, 0x7f0c053f

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(I)V

    goto :goto_0

    .line 186
    .end local v0    # "wapiDialog":Lcom/android/settings_ex/WapiCertMgmtDialog;
    :pswitch_1
    new-instance v0, Lcom/android/settings_ex/WapiCertMgmtDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;-><init>(Landroid/content/Context;)V

    .line 187
    .restart local v0    # "wapiDialog":Lcom/android/settings_ex/WapiCertMgmtDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setMode(I)V

    .line 188
    const v1, 0x7f0c0543

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/WapiCertMgmtDialog;->setTitle(I)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 360
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "key":Ljava/lang/String;
    const-string v8, "frequency_band"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 364
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 365
    .local v6, "value":I
    iget-object v8, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v11, 0x1

    invoke-virtual {v8, v6, v11}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 366
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v6    # "value":I
    :cond_0
    const-string v8, "sleep_policy"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 402
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 403
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "wifi_sleep_policy"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 413
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v8

    .line 367
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0c0558

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 370
    goto :goto_0

    .line 372
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v8, "wifi_assistant"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 373
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v7

    .line 375
    .local v7, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v7, :cond_3

    .line 376
    iget-object v8, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move v8, v10

    .line 377
    goto :goto_0

    .line 380
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 385
    iget-object v8, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 397
    goto :goto_0

    .line 389
    :cond_4
    const-string v8, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v8, "packageName"

    iget-object v10, v7, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 406
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0c04e4

    invoke-static {v1, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 409
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 486
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "key":Ljava/lang/String;
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 489
    :cond_1
    const-string v4, "wapi_cert_install"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick key 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v4, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    sget-object v5, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v4, v5, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 496
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v2, v3

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showWapiCertInstallDialog()V

    goto :goto_0

    .line 502
    :cond_3
    const-string v3, "wapi_cert_uninstall"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceClick key 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/16 v3, 0x38

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    const/16 v3, 0x14

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 341
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "key":Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    :goto_0
    return v2

    .line 347
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string v3, "wifi_scan_always_available"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 352
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->certificationExist()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWapiCertInstallPreference()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initWapiCertUninstallPreference()V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 172
    return-void
.end method

.method public refreashAdvance()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    return-void
.end method
