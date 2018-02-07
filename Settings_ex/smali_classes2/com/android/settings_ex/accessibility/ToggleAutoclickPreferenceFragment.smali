.class public Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AUTOCLICK_DELAY_STEP:I = 0x64

.field private static final MAX_AUTOCLICK_DELAY:I = 0x3e8

.field private static final MIN_AUTOCLICK_DELAY:I = 0xc8

.field private static final mAutoclickPreferenceSummaries:[I


# instance fields
.field private mDelay:Lcom/android/settings_ex/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    const v0, 0x7f13000d

    .line 56
    const v1, 0x7f13000e

    .line 57
    const v2, 0x7f13000f

    .line 58
    const v3, 0x7f130010

    .line 59
    const v4, 0x7f130011

    .line 54
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private delayToSeekBarProgress(I)I
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 177
    add-int/lit16 v0, p1, -0xc8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "delay"    # I

    .prologue
    .line 76
    invoke-static {p1}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    .line 78
    .local v0, "summaryIndex":I
    sget-object v1, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v1, v1, v0

    .line 77
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 77
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 3
    .param p0, "delay"    # I

    .prologue
    .line 85
    const/16 v1, 0xc8

    if-gt p0, v1, :cond_0

    .line 86
    const/4 v1, 0x0

    return v1

    .line 88
    :cond_0
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    .line 89
    sget-object v1, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 92
    :cond_1
    sget-object v1, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 91
    const/16 v2, 0x320

    div-int v0, v2, v1

    .line 93
    .local v0, "rangeSize":I
    add-int/lit16 v1, p0, -0xc8

    div-int/2addr v1, v0

    return v1
.end method

.method private seekBarProgressToDelay(I)I
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 169
    mul-int/lit8 v0, p1, 0x64

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x14f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_autoclick_delay"

    .line 115
    const/16 v3, 0x258

    .line 113
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "delay":I
    const-string/jumbo v1, "autoclick_delay"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SeekBarPreference;->setMax(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SeekBarPreference;->setProgress(I)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 130
    const-string/jumbo v4, "accessibility_autoclick_enabled"

    .line 129
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "value":I
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    if-ne v0, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SeekBarPreference;->setEnabled(Z)V

    .line 126
    return-void

    :cond_0
    move v1, v3

    .line 131
    goto :goto_0

    :cond_1
    move v2, v3

    .line 133
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "accessibility_autoclick_delay"

    .line 159
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result v2

    .line 157
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings_ex/SeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/SeekBarPreference;->setEnabled(Z)V

    .line 97
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 137
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 144
    const-string/jumbo v0, "accessibility_autoclick_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    const v0, 0x7f0e0add

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/ToggleAutoclickPreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 148
    return-void
.end method
