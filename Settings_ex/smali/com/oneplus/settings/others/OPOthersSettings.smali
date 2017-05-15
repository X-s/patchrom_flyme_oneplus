.class public Lcom/oneplus/settings/others/OPOthersSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPOthersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimerShutdownPreference:Landroid/preference/Preference;

.field private mUserPlanPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/oneplus/settings/others/OPOthersSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPOthersSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPOthersSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "user_enjoy_plan"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    const-string v0, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/preference/Preference;

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/preference/Preference;

    const v1, 0x7f0c01be

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mTimerShutdownPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "require_password_to_decrypt"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPOthersSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->updateView()V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_join_user_plan_settings"

    iget-object v5, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 84
    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v2, v1

    .line 97
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 63
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPOthersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_join_user_plan_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
