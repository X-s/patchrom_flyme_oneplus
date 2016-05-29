.class public abstract Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPToggleGlobalFeaturePreferenceFragment.java"


# instance fields
.field protected mFeatureEnablePreference:Landroid/preference/SwitchPreference;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/preference/Preference;

.field protected mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 161
    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 167
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 46
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 47
    new-instance v2, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment$1;-><init>(Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 73
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v3, 0x7f0400d9

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 76
    new-instance v2, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    .line 78
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment$2;-><init>(Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 102
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceThinDivider;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceThinDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    return-void

    .line 78
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 145
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 148
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 136
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    .line 137
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v2, "preference_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 184
    const-string v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 187
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 191
    .end local v0    # "enabled":Z
    :cond_1
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 196
    :cond_2
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 199
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 205
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 115
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleGlobalFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method
