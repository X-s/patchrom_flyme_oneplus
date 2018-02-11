.class public Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$1;,
        Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHOW_MOBILE_CATEGORY:Z


# instance fields
.field private mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;)Lcom/android/settings_exlib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$1;-><init>()V

    .line 169
    sput-object v0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private buildMobilePref(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 116
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 117
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 118
    .local v0, "pref":Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/support/v7/preference/Preference;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 123
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 124
    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 125
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 126
    .local v1, "pref":Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 96
    invoke-static {p1}, Lcom/android/settings_ex/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "mWifiConfiguration":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 102
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 109
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "mWifiConfiguration":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x44

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 74
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 76
    new-instance v1, Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings_exlib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->read()V

    .line 79
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string/jumbo v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 81
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 82
    const-string/jumbo v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/support/v7/preference/Preference;

    .line 84
    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 69
    return-void
.end method
