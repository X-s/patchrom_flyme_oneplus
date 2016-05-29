.class public Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;
.super Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;
.source "OPToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final DEFAULT_TYPE:I = 0xc

.field private static final ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field private static final TYPE:Ljava/lang/String; = "accessibility_display_daltonizer"


# instance fields
.field private mType:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    const v3, 0x7f09072f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f09090c

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->addPreferencesFromResource(I)V

    .line 30
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->initPreferences()V

    .line 33
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 72
    iget-object v2, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 75
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mFeatureEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/oneplus/settings/accessibility/OPToggleDaltonFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f09072b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/accessibility/OPToggleDaltonizerPreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 66
    return-void
.end method
