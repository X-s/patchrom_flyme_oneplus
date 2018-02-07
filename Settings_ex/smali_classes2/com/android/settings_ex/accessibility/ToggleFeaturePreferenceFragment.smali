.class public abstract Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/support/v7/preference/Preference;

.field protected mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 132
    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 137
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    new-instance v1, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f0401e8

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 115
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    .line 106
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 150
    return-void

    .line 154
    :cond_0
    const-string/jumbo v2, "preference_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 157
    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 163
    .end local v0    # "enabled":Z
    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 168
    :cond_2
    const-string/jumbo v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 170
    const-string/jumbo v2, "summary"

    .line 169
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 171
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 93
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
