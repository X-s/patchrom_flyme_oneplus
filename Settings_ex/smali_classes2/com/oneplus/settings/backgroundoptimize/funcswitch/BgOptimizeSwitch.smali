.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "BgOptimizeSwitch.java"


# static fields
.field private static final PREF_BG_OPTIMIZE_SWITCH:Ljava/lang/String; = "bg_optimize_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-string/jumbo v3, "bg_optimize_switch"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 30
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 28
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 31
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->addPreferencesFromResource(I)V

    .line 25
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->initData()V

    .line 21
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    const-string/jumbo v1, "bg_optimize_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 39
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v3, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState(II)I

    .line 40
    return v2

    :cond_0
    move v1, v3

    .line 39
    goto :goto_0

    .line 42
    .end local v0    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method
