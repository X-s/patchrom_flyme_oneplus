.class public Lcom/oneplus/settings/OPMultitaskingCleanWay;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPMultitaskingCleanWay.java"

# interfaces
.implements Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_DEEP_CLEAR_WAY:Ljava/lang/String; = "op_deep_clear_way"

.field private static final KEY_NORMAL_CLEAR_WAY:Ljava/lang/String; = "op_normal_clear_way"

.field private static final METRICSLOGGER_MULTITASKING_CLEARWAY_VALUE:I = 0x4ee


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x4ee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->addPreferencesFromResource(I)V

    .line 29
    sget-object v0, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    .line 30
    const-string v0, "op_normal_clear_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 31
    const-string v0, "op_deep_clear_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 32
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 34
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/ui/RadioButtonPreference;)V
    .locals 4
    .param p1, "emiter"    # Lcom/android/settings_ex/ui/RadioButtonPreference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_clear_way"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_clear_way"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_clear_way"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "value":I
    iget-object v4, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 42
    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 44
    .end local v0    # "value":I
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 45
    return-void

    .restart local v0    # "value":I
    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    :cond_2
    move v2, v3

    .line 42
    goto :goto_1
.end method
