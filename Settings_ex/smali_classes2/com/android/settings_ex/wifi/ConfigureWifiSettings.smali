.class public Lcom/android/settings_ex/wifi/ConfigureWifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ConfigureWifiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/ConfigureWifiSettings$1;
    }
.end annotation


# static fields
.field private static final KEY_CELLULAR_FALLBACK:Ljava/lang/String; = "wifi_cellular_data_fallback"

.field private static final KEY_CURRENT_GATEWAY:Ljava/lang/String; = "current_gateway"

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_CURRENT_NETMASK:Ljava/lang/String; = "current_netmask"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NETWORK_AUTO_CHANGE:Ljava/lang/String; = "network_auto_change"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_SAVED_NETWORKS:Ljava/lang/String; = "saved_networks"

.field private static final KEY_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_scan_always_available"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_WAPI_CERT_INSTALL:Ljava/lang/String; = "wapi_cert_install"

.field private static final KEY_WAPI_CERT_UNINSTALL:Ljava/lang/String; = "wapi_cert_uninstall"

.field private static final KEY_WIFI_ASSISTANT:Ljava/lang/String; = "wifi_assistant"

.field private static final KEY_WIFI_IPV6_SURPORT:Ljava/lang/String; = "wifi_ipv6_supported"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings"

.field public static final WIFI_AUTO_CHANGE_TO_MOBILE_DATA:Ljava/lang/String; = "wifi_auto_change_to_mobile_data"

.field public static final WIFI_SHOULD_SWITCH_NETWORK:Ljava/lang/String; = "wifi_should_switch_network"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWapiCertInstall:Landroid/support/v7/preference/Preference;

.field private mWapiCertUninstall:Landroid/support/v7/preference/Preference;

.field private mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/wifi/ConfigureWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 382
    new-instance v0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/ConfigureWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 217
    const v2, 0x10e0011

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    .prologue
    .line 221
    const-string/jumbo v0, "1"

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    const-string/jumbo v2, "network_avoid_bad_wifi"

    .line 221
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private initPreferences()V
    .locals 15

    .prologue
    .line 120
    iget-object v12, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 122
    :cond_0
    const-string/jumbo v12, "saved_networks"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 126
    :cond_1
    const-string/jumbo v12, "notify_open_networks"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    .line 127
    .local v5, "notifyOpenNetworks":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 128
    const-string/jumbo v13, "wifi_networks_available_notification_on"

    const/4 v14, 0x0

    .line 127
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 128
    const/4 v13, 0x1

    .line 127
    if-ne v12, v13, :cond_a

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v5, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v12, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    invoke-virtual {v5, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 132
    const-string/jumbo v12, "wifi_scan_always_available"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v14/preference/SwitchPreference;

    .line 133
    .local v7, "scanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v7, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 135
    const-string/jumbo v13, "wifi_scan_always_enabled"

    const/4 v14, 0x0

    .line 134
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 135
    const/4 v13, 0x1

    .line 134
    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 138
    :cond_2
    const-string/jumbo v12, "network_auto_change"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    .line 139
    .local v4, "networkAutoChange":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v4, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 141
    const-string/jumbo v13, "wifi_should_switch_network"

    const/4 v14, 0x0

    .line 140
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 141
    const/4 v13, 0x1

    .line 140
    if-ne v12, v13, :cond_c

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v4, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 144
    :cond_3
    const-string/jumbo v12, "wifi_ipv6_supported"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    .line 145
    .local v3, "ipv6SurportSwitch":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v3, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 147
    const-string/jumbo v13, "wifi_ipv6_supported"

    const/4 v14, 0x1

    .line 146
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 147
    const/4 v13, 0x1

    .line 146
    if-ne v12, v13, :cond_d

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v3, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    :cond_4
    const-string/jumbo v12, "wifi_ipv6_supported"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 153
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->avoidBadWifiConfig()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 155
    const-string/jumbo v12, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 166
    :cond_5
    :goto_4
    const-string/jumbo v12, "wifi_assistant"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings_ex/AppListSwitchPreference;

    iput-object v12, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    .line 168
    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v8

    .line 169
    .local v8, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 172
    :cond_6
    iget-object v12, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    if-eqz v12, :cond_7

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    :cond_7
    :goto_5
    const-string/jumbo v12, "sleep_policy"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    .line 177
    .local v9, "sleepPolicyPref":Landroid/support/v7/preference/ListPreference;
    if-eqz v9, :cond_9

    .line 178
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 179
    const v12, 0x7f0a0044

    invoke-virtual {v9, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 181
    :cond_8
    invoke-virtual {v9, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 183
    const-string/jumbo v13, "wifi_sleep_policy"

    .line 184
    const/4 v14, 0x2

    .line 182
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 185
    .local v11, "value":I
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "stringValue":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v9, v10}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 119
    .end local v10    # "stringValue":Ljava/lang/String;
    .end local v11    # "value":I
    :cond_9
    return-void

    .line 127
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "ipv6SurportSwitch":Landroid/support/v14/preference/SwitchPreference;
    .end local v4    # "networkAutoChange":Landroid/support/v14/preference/SwitchPreference;
    .end local v7    # "scanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    .end local v8    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v9    # "sleepPolicyPref":Landroid/support/v7/preference/ListPreference;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 134
    .restart local v7    # "scanAlwaysAvailable":Landroid/support/v14/preference/SwitchPreference;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 140
    .restart local v4    # "networkAutoChange":Landroid/support/v14/preference/SwitchPreference;
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 146
    .restart local v3    # "ipv6SurportSwitch":Landroid/support/v14/preference/SwitchPreference;
    :cond_d
    const/4 v12, 0x0

    goto :goto_3

    .line 158
    .restart local v1    # "context":Landroid/content/Context;
    :cond_e
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->avoidBadWifiCurrentSettings()Z

    move-result v2

    .line 159
    .local v2, "currentSetting":Z
    const-string/jumbo v12, "wifi_cellular_data_fallback"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    .line 162
    .local v6, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v6, :cond_5

    .line 163
    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4

    .line 170
    .end local v2    # "currentSetting":Z
    .end local v6    # "pref":Landroid/support/v14/preference/SwitchPreference;
    .restart local v8    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_f
    iget-object v12, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    invoke-virtual {v12, p0}, Lcom/android/settings_ex/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    goto :goto_5
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
    .line 366
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 367
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 368
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 369
    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "scorer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 370
    .local v3, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiAssistantPreference:Lcom/android/settings_ex/AppListSwitchPreference;

    .line 374
    iget-object v6, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    .line 373
    invoke-virtual {v5, v2, v6}, Lcom/android/settings_ex/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 14

    .prologue
    const v13, 0x7f0e0861

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "context":Landroid/content/Context;
    iget-object v11, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 321
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v11, "mac_address"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 322
    .local v9, "wifiMacAddressPref":Landroid/support/v7/preference/Preference;
    if-nez v7, :cond_6

    .line 323
    .local v4, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .end local v4    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v9, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 327
    const-string/jumbo v11, "current_ip_address"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 328
    .local v8, "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "ipAddress":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 330
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    .end local v3    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v8, v12}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 334
    const-string/jumbo v11, "current_gateway"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 335
    .local v6, "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    const/4 v2, 0x0

    .line 336
    .local v2, "gateway":Ljava/lang/String;
    const-string/jumbo v11, "current_netmask"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 337
    .local v10, "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    const/4 v5, 0x0

    .line 338
    .local v5, "netmask":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 339
    iget-object v11, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 340
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v7, :cond_1

    .line 341
    if-eqz v1, :cond_1

    .line 342
    iget v11, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "gateway":Ljava/lang/String;
    iget v11, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v11}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .end local v2    # "gateway":Ljava/lang/String;
    .end local v5    # "netmask":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_3

    .line 347
    if-eqz v2, :cond_2

    iget v11, v1, Landroid/net/DhcpInfo;->gateway:I

    if-nez v11, :cond_8

    .line 348
    :cond_2
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 347
    :goto_2
    invoke-virtual {v6, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    :cond_3
    if-eqz v10, :cond_5

    .line 351
    if-eqz v5, :cond_4

    iget v11, v1, Landroid/net/DhcpInfo;->netmask:I

    if-nez v11, :cond_9

    .line 352
    :cond_4
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 351
    :goto_3
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_5
    :goto_4
    return-void

    .line 322
    .end local v6    # "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    .end local v8    # "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    .end local v10    # "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    :cond_6
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 324
    .restart local v4    # "macAddress":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v4    # "macAddress":Ljava/lang/String;
    .restart local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v6    # "wifiGatewayPref":Landroid/support/v7/preference/Preference;
    .restart local v8    # "wifiIpAddressPref":Landroid/support/v7/preference/Preference;
    .restart local v10    # "wifiNetmaskPref":Landroid/support/v7/preference/Preference;
    :cond_8
    move-object v11, v2

    .line 348
    goto :goto_2

    :cond_9
    move-object v11, v5

    .line 352
    goto :goto_3

    .line 355
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .local v2, "gateway":Ljava/lang/String;
    .restart local v5    # "netmask":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_b

    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 358
    :cond_b
    if-eqz v10, :cond_5

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    if-eqz p2, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const v2, 0x7f0a0044

    .line 196
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 198
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 200
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 195
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    :cond_0
    const v2, 0x7f0a0042

    .restart local v2    # "summaryArrayResId":I
    goto :goto_0

    .line 197
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "wapi_cert_install"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWapiCertInstall:Landroid/support/v7/preference/Preference;

    .line 208
    const-string/jumbo v4, "wapi_cert_uninstall"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWapiCertUninstall:Landroid/support/v7/preference/Preference;

    .line 211
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x152

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 101
    iput-object v0, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->addPreferencesFromResource(I)V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 271
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v7, "wifi_assistant"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 275
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v1, p2}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    .line 276
    .local v6, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v6, :cond_0

    .line 277
    iget-object v7, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v7, v8}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    .line 278
    return v11

    .line 281
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 286
    iget-object v7, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 287
    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    .line 286
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 298
    return v10

    .line 290
    :cond_1
    const-string/jumbo v7, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v7, "packageName"

    .line 292
    iget-object v8, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 291
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 301
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "sleep_policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 304
    .local v5, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_sleep_policy"

    .line 305
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 304
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    invoke-direct {p0, p1, v5}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v5    # "stringValue":Ljava/lang/String;
    :cond_3
    return v11

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/NumberFormatException;
    const v7, 0x7f0e06fe

    invoke-static {v1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 310
    return v10
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "notify_open_networks"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 231
    const-string/jumbo v6, "wifi_networks_available_notification_on"

    .line 232
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 230
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 232
    goto :goto_0

    .line 233
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_2
    const-string/jumbo v2, "wifi_cellular_data_fallback"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    const-string/jumbo v1, "network_avoid_bad_wifi"

    .line 236
    .local v1, "settingName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 237
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "1"

    .line 236
    :goto_2
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 237
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 240
    .end local v1    # "settingName":Ljava/lang/String;
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_4
    const-string/jumbo v2, "wifi_scan_always_available"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 242
    const-string/jumbo v5, "wifi_scan_always_enabled"

    .line 243
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v3

    .line 241
    :cond_5
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 244
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_6
    const-string/jumbo v2, "network_auto_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 246
    const-string/jumbo v6, "wifi_should_switch_network"

    move-object v2, p1

    .line 247
    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    .line 245
    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 250
    const-string/jumbo v6, "wifi_auto_change_to_mobile_data"

    move-object v2, p1

    .line 251
    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    .line 249
    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 253
    const-string/jumbo v5, "captive_portal_detection_enabled"

    .line 254
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v3

    .line 252
    :cond_7
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_8
    move v2, v4

    .line 247
    goto :goto_3

    :cond_9
    move v2, v4

    .line 251
    goto :goto_4

    .line 256
    :cond_a
    const-string/jumbo v2, "wifi_ipv6_supported"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 258
    const-string/jumbo v5, "wifi_ipv6_supported"

    .line 259
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v3

    .line 257
    :cond_b
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 263
    .restart local p1    # "preference":Landroid/support/v7/preference/Preference;
    :cond_c
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->initPreferences()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/ConfigureWifiSettings;->refreshWifiInfo()V

    .line 106
    return-void
.end method
