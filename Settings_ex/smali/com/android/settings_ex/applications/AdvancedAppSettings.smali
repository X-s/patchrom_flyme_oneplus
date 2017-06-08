.class public Lcom/android/settings_ex/applications/AdvancedAppSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedAppSettings.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithWriteSettingsPermission;,
        Lcom/android/settings_ex/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;
    }
.end annotation


# static fields
.field private static final KEY_APP_DOMAIN_URLS:Ljava/lang/String; = "domain_urls"

.field private static final KEY_APP_PERM:Ljava/lang/String; = "manage_perms"

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default_apps"

.field private static final KEY_HIGH_POWER_APPS:Ljava/lang/String; = "high_power_apps"

.field private static final KEY_LINKER_LUNCH:Ljava/lang/String; = "op_linked_launch"

.field private static final KEY_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "system_alert_window"

.field private static final KEY_WRITE_SETTINGS_APPS:Ljava/lang/String; = "write_settings_apps"

.field static final TAG:Ljava/lang/String; = "AdvancedAppSettings"


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mAppPermsPreference:Landroid/preference/Preference;

.field private mHighPowerPreference:Landroid/preference/Preference;

.field private mLinkedLunchPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/preference/Preference;

.field private mWriteSettingsPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 148
    new-instance v0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 187
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "manage_perms"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 75
    .local v2, "permissions":Landroid/preference/Preference;
    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 76
    .local v1, "isCtaVersion":Z
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.oneplus.security"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    .line 86
    .local v0, "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 88
    const-string v3, "manage_perms"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    .line 89
    const-string v3, "domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 90
    const-string v3, "high_power_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/preference/Preference;

    .line 91
    const-string v3, "system_alert_window"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    .line 92
    const-string v3, "write_settings_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    .line 94
    const-string v3, "op_linked_launch"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mLinkedLunchPreference:Landroid/preference/Preference;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.oneplus.security"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mLinkedLunchPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    return-void

    .line 81
    .end local v0    # "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "key":Ljava/lang/String;
    const-string v6, "default_apps"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.oneplus.security"

    invoke-static {v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v3, "intents":Landroid/content/Intent;
    const-string v6, "com.oneplus.security.action.DEFAULT_APP_SETTING"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 238
    .end local v3    # "intents":Landroid/content/Intent;
    :goto_0
    return v5

    .line 227
    :cond_0
    const-string v6, "op_linked_launch"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.oneplus.security.action.CHAIN_LAUNCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 234
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v6, "AdvancedAppSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0

    .line 232
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 223
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v6

    goto :goto_0
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
    .line 121
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 111
    return-void
.end method
