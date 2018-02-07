.class public Lcom/android/settings_ex/applications/AdvancedAppSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AdvancedAppSettings$1;,
        Lcom/android/settings_ex/applications/AdvancedAppSettings$2;
    }
.end annotation


# static fields
.field private static final KEY_ADVANCED_APPS:Ljava/lang/String; = "advanced_apps"

.field private static final KEY_APP_DOMAIN_URLS:Ljava/lang/String; = "domain_urls"

.field private static final KEY_APP_PERM:Ljava/lang/String; = "manage_perms"

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default_apps"

.field private static final KEY_HIGH_POWER_APPS:Ljava/lang/String; = "high_power_apps"

.field private static final KEY_LINKER_LUNCH:Ljava/lang/String; = "op_linked_launch"

.field private static final KEY_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "system_alert_window"

.field private static final KEY_WRITE_SETTINGS_APPS:Ljava/lang/String; = "write_settings_apps"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final TAG:Ljava/lang/String; = "AdvancedAppSettings"


# instance fields
.field private mAdvanceAppsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

.field private mAppPermsPreference:Landroid/support/v7/preference/Preference;

.field private mHighPowerPreference:Landroid/support/v7/preference/Preference;

.field private mLinkedLunchPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

.field private mWriteSettingsPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/android/settings_ex/applications/AdvancedAppSettings$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/AdvancedAppSettings$2;-><init>()V

    .line 209
    sput-object v0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 171
    new-instance v0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 58
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings()V

    .line 94
    const v3, 0x7f080008

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "manage_perms"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 98
    .local v2, "permissions":Landroid/support/v7/preference/Preference;
    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 99
    .local v1, "isCtaVersion":Z
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 101
    const-string/jumbo v4, "com.oneplus.security"

    .line 100
    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 107
    invoke-static {v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    .line 109
    .local v0, "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 111
    const-string/jumbo v3, "manage_perms"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/support/v7/preference/Preference;

    .line 112
    const-string/jumbo v3, "domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/support/v7/preference/Preference;

    .line 113
    const-string/jumbo v3, "high_power_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/support/v7/preference/Preference;

    .line 114
    const-string/jumbo v3, "system_alert_window"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/support/v7/preference/Preference;

    .line 115
    const-string/jumbo v3, "write_settings_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 117
    const-string/jumbo v3, "advanced_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAdvanceAppsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 118
    const-string/jumbo v3, "op_linked_launch"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mLinkedLunchPreference:Landroid/support/v7/preference/Preference;

    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAdvanceAppsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mLinkedLunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.oneplus.security"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    :cond_0
    return-void

    .line 104
    .end local v0    # "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "op_linked_launch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.oneplus.security.action.CHAIN_LAUNCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    .end local v1    # "intent":Landroid/content/Intent;
    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 203
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 200
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v4, "AdvancedAppSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4

    .line 200
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 132
    return-void
.end method
