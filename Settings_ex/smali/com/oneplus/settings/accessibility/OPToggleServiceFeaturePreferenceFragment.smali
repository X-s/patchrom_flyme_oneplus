.class public abstract Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPToggleServiceFeaturePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;

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
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 201
    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 155
    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 161
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 52
    new-instance v1, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$1;-><init>(Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400d9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 79
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$2;-><init>(Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    new-instance v1, Lcom/android/settings_ex/ui/OPPreferenceThinDivider;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/ui/OPPreferenceThinDivider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 140
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 141
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 142
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 129
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    .line 132
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v2, "preference_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 177
    const-string v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "checked"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "enabled":Z
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 183
    .end local v0    # "enabled":Z
    :cond_1
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 188
    :cond_2
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 191
    .local v1, "summary":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 197
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 108
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public setCallBackService(Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->mCallback:Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment$OPCallbackService;

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleServiceFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method
