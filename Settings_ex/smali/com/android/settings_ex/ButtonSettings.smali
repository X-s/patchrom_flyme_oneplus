.class public Lcom/android/settings_ex/ButtonSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ButtonSettings.java"


# static fields
.field private static final PREF_KEY_SHOW_NAVIGATION_BAR:Ljava/lang/String; = "pref_key_show_navigation_bar"


# instance fields
.field private mShowNavBar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private saveNavKeyOptionToDB(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/settings_ex/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sys.settings_show_navigation_bar"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ButtonSettings;->addPreferencesFromResource(I)V

    .line 29
    const-string v0, "pref_key_show_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/ButtonSettings;->mShowNavBar:Landroid/preference/CheckBoxPreference;

    .line 30
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/settings_ex/ButtonSettings;->mShowNavBar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/ButtonSettings;->mShowNavBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 46
    .local v0, "enabled":Z
    invoke-direct {p0, v0}, Lcom/android/settings_ex/ButtonSettings;->saveNavKeyOptionToDB(Z)V

    .line 49
    .end local v0    # "enabled":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 35
    return-void
.end method
