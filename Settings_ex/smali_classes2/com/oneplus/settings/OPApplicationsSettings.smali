.class public Lcom/oneplus/settings/OPApplicationsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPApplicationsSettings$1;
    }
.end annotation


# static fields
.field private static final ONEPLUS_APPLICATIONS_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_manager_settings"

.field private static final ONEPLUS_APPLICATIONS_PERMISSION_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_permission_settings"

.field private static final ONEPLUS_DEFAULT_APPLICATIONS_SETTINGS_KEY:Ljava/lang/String; = "onepluse_default_applications_setting"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPApplicationsSettings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

.field private mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/oneplus/settings/OPApplicationsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPApplicationsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPApplicationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPApplicationsSettings;->addPreferencesFromResource(I)V

    .line 54
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "oneplus_applications_permission_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-boolean v3, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 71
    .local v3, "isCtaVersion":Z
    if-eqz v3, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 73
    const-string/jumbo v6, "com.oneplus.security"

    .line 72
    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 71
    if-eqz v5, :cond_0

    .line 74
    new-instance v1, Landroid/content/Intent;

    .line 75
    const-string/jumbo v5, "com.oneplus.security.action.OPPERMISSION"

    .line 74
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v7

    .line 77
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 78
    const-string/jumbo v5, "android.intent.action.MANAGE_PERMISSIONS"

    .line 77
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "isCtaVersion":Z
    :cond_1
    const-string/jumbo v5, "onepluse_default_applications_setting"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.oneplus.security"

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v2, "intents":Landroid/content/Intent;
    const-string/jumbo v5, "com.oneplus.security.action.DEFAULT_APP_SETTING"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .end local v2    # "intents":Landroid/content/Intent;
    :goto_2
    return v7

    .line 96
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    return v5

    .line 98
    :cond_3
    const/4 v5, 0x0

    return v5

    .line 90
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_2

    .line 81
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v3    # "isCtaVersion":Z
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 60
    return-void
.end method
