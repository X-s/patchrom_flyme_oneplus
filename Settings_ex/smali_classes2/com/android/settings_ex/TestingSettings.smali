.class public Lcom/android/settings_ex/TestingSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f08008e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TestingSettings;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings_ex/TestingSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 34
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string/jumbo v2, "radio_info_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 37
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 28
    .end local v0    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
