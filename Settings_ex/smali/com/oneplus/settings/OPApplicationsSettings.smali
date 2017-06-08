.class public Lcom/oneplus/settings/OPApplicationsSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPApplicationsSettings.java"


# static fields
.field private static final ONEPLUS_APPLICATIONS_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_manager_settings"

.field private static final ONEPLUS_APPLICATIONS_PERMISSION_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_permission_settings"

.field private static final ONEPLUS_DEFAULT_APPLICATIONS_SETTINGS_KEY:Ljava/lang/String; = "onepluse_default_applications_setting"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPApplicationsSettings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimerShutdownPreference:Landroid/preference/Preference;

.field private mUserPlanPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/oneplus/settings/OPApplicationsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPApplicationsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPApplicationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

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
    .line 105
    const/16 v0, 0x10

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPApplicationsSettings;->addPreferencesFromResource(I)V

    .line 57
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "key":Ljava/lang/String;
    const-string v5, "oneplus_applications_permission_settings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    sget-boolean v2, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 72
    .local v2, "isCtaVersion":Z
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.oneplus.security"

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "isCtaVersion":Z
    :goto_1
    return v4

    .line 78
    .restart local v2    # "isCtaVersion":Z
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "isCtaVersion":Z
    :cond_1
    const-string v5, "onepluse_default_applications_setting"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.oneplus.security"

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, "intents":Landroid/content/Intent;
    const-string v5, "com.oneplus.security.action.DEFAULT_APP_SETTING"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 91
    .end local v1    # "intents":Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 97
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1

    .line 99
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 82
    .restart local v2    # "isCtaVersion":Z
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 62
    return-void
.end method
