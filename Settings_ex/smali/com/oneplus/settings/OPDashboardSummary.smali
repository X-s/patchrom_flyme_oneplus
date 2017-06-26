.class public Lcom/oneplus/settings/OPDashboardSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "OPDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;
    }
.end annotation


# static fields
.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final KEY_DEVELOPMENT:Ljava/lang/String; = "development_settings"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "fingerprint_settings"

.field private static final KEY_PASSWORD_MANAGE:Ljava/lang/String; = "password_manage_settings"

.field private static final KEY_SIM_SETTINGS_AND_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "sim_settings_and_mobile_network_settings"

.field private static final KEY_SYSTEM_SECTION:Ljava/lang/String; = "system_section"

.field private static final KEY_SYSTEM_UPDATE:Ljava/lang/String; = "onepluse_system_upgrade_settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mSimSettingsAndNetWorkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateDevelopMent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateSystemUpdateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDashboardSummary;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateDevelopMent()V
    .locals 8

    .prologue
    .line 167
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-nez v4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v5, "show"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 173
    .local v2, "showDev":Z
    const-string v4, "system_section"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 175
    .local v1, "root":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 177
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "isEng":Z
    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 182
    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateSystemUpdateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "has_new_version_to_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 124
    .local v0, "showSystemUpdateIcon":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    const-string v3, "onepluse_system_upgrade_settings"

    invoke-virtual {v2, v0, v3}, Lcom/oneplus/settings/OPDashboardPreference;->showRightIcon(ZLjava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->notifyDependencyChange(Z)V

    .line 126
    return-void

    .end local v0    # "showSystemUpdateIcon":Z
    :cond_0
    move v0, v1

    .line 123
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x23

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v5, 0x7f080039

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    .line 62
    const-string v5, "development_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 63
    const-string v5, "sim_settings_and_mobile_network_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSimSettingsAndNetWorkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 65
    .local v1, "mPhoneCount":I
    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSimSettingsAndNetWorkSettingsDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    const v7, 0x7f0c006d

    invoke-virtual {v5, v7}, Lcom/oneplus/settings/OPDashboardPreference;->setTitle(I)V

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "oem.threeStageKey.support"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    const-string v5, "device_section"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 72
    .local v0, "mDeviceSectionCategory":Landroid/preference/PreferenceCategory;
    const-string v5, "no_disturb_mode"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v7, "development"

    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 80
    new-instance v5, Lcom/oneplus/settings/OPDashboardSummary$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/OPDashboardSummary$1;-><init>(Lcom/oneplus/settings/OPDashboardSummary;)V

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 87
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 90
    const-string v5, "private_safety_section"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 91
    .local v2, "root":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "oem.finger.print.support"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    const-string v5, "password_manage_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_1
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    const-string v7, "com.oneplus.noviceteaching"

    invoke-static {v5, v7}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    const-string v5, "system_section"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 102
    .local v4, "systemcategory":Landroid/preference/PreferenceCategory;
    const-string v5, "op_noviceguide"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    .end local v4    # "systemcategory":Landroid/preference/PreferenceCategory;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPDashboardSummary;->updateDevelopMent()V

    .line 109
    const-string v5, "onepluse_system_upgrade_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/OPDashboardPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    .line 111
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "has_new_version_to_update"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 112
    .local v3, "showSystemUpdateIcon":Z
    :goto_2
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateDashborad:Lcom/oneplus/settings/OPDashboardPreference;

    const-string v6, "onepluse_system_upgrade_settings"

    invoke-virtual {v5, v3, v6}, Lcom/oneplus/settings/OPDashboardPreference;->showRightIcon(ZLjava/lang/String;)V

    .line 113
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v5, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    iget-object v6, p0, Lcom/oneplus/settings/OPDashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/OPDashboardSummary;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    .line 115
    iget-object v5, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    invoke-virtual {v5}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 117
    return-void

    .line 74
    .end local v0    # "mDeviceSectionCategory":Landroid/preference/PreferenceCategory;
    .end local v2    # "root":Landroid/preference/PreferenceCategory;
    .end local v3    # "showSystemUpdateIcon":Z
    :cond_2
    const-string v5, "device_section"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 75
    .restart local v0    # "mDeviceSectionCategory":Landroid/preference/PreferenceCategory;
    const-string v5, "zen_mode"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 96
    .restart local v2    # "root":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v5, "fingerprint_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPDashboardSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_4
    move v3, v6

    .line 111
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary;->mSystemUpdateObserver:Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 202
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardSummary;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 190
    .local v0, "listview":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    return-void
.end method
