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

.field private static final KEY_HIGH_POWER_APPS:Ljava/lang/String; = "high_power_apps"

.field private static final KEY_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "system_alert_window"

.field private static final KEY_WRITE_SETTINGS_APPS:Ljava/lang/String; = "write_settings_apps"

.field static final TAG:Ljava/lang/String; = "AdvancedAppSettings"


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mAppPermsPreference:Landroid/preference/Preference;

.field private mHighPowerPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionReceiver:Landroid/content/BroadcastReceiver;

.field private mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private mSystemAlertWindowPreference:Landroid/preference/Preference;

.field private mWriteSettingsPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 137
    new-instance v0, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings$1;-><init>(Lcom/android/settings_ex/applications/AdvancedAppSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionCallback:Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 176
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/AdvancedAppSettings;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mPermissionReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/AdvancedAppSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/AdvancedAppSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x82

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->addPreferencesFromResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "manage_perms"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 67
    .local v2, "permissions":Landroid/preference/Preference;
    sget-boolean v1, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 68
    .local v1, "isCtaVersion":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.oneplus.security"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v0

    .line 83
    .local v0, "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 85
    const-string v3, "manage_perms"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppPermsPreference:Landroid/preference/Preference;

    .line 86
    const-string v3, "domain_urls"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mAppDomainURLsPreference:Landroid/preference/Preference;

    .line 87
    const-string v3, "high_power_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mHighPowerPreference:Landroid/preference/Preference;

    .line 88
    const-string v3, "system_alert_window"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;

    .line 89
    const-string v3, "write_settings_apps"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/AdvancedAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AdvancedAppSettings;->mWriteSettingsPreference:Landroid/preference/Preference;

    .line 90
    return-void

    .line 73
    .end local v0    # "applicationsState":Lcom/android/settings_exlib/applications/ApplicationsState;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
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
    .line 110
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 100
    return-void
.end method
