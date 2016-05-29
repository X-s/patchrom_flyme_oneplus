.class public Lcom/oneplus/settings/display/OPFontSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPFontSettings.java"

# interfaces
.implements Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_LARGE_FONT_SETTINGS:Ljava/lang/String; = "oneplus_large_font"

.field private static final KEY_NORMAL_FONT_SETTINGS:Ljava/lang/String; = "oneplus_normal_font"

.field private static final KEY_SAMLL_FONT_SETTINGS:Ljava/lang/String; = "oneplus_small_font"

.field private static final KEY_SUPER_LARGE_FONT_SETTINGS:Ljava/lang/String; = "oneplus_superlarge_font"

.field private static final TAG:Ljava/lang/String; = "OPFontSettings"


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 38
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private InitFontSettings()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "oneplus_small_font"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 55
    const-string v0, "oneplus_normal_font"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 57
    const-string v0, "oneplus_large_font"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 59
    const-string v0, "oneplus_superlarge_font"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/location/RadioButtonPreference$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/settings/display/OPFontSettings;->readFontSizePreference()V

    .line 64
    return-void
.end method

.method private floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/oneplus/settings/display/OPFontSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 76
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 77
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 78
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 79
    add-int/lit8 v4, v0, -0x1

    .line 84
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 81
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->addPreferencesFromResource(I)V

    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/display/OPFontSettings;->InitFontSettings()V

    .line 49
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "preference"    # Lcom/android/settings_ex/location/RadioButtonPreference;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_small_font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->writeFontSizePreference(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_normal_font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->writeFontSizePreference(I)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_large_font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->writeFontSizePreference(I)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ex/location/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus_superlarge_font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/display/OPFontSettings;->writeFontSizePreference(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 70
    return-void
.end method

.method public readFontSizePreference()V
    .locals 6

    .prologue
    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/display/OPFontSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/display/OPFontSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v4}, Lcom/oneplus/settings/display/OPFontSettings;->floatToIndex(F)I

    move-result v2

    .line 100
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/display/OPFontSettings;->switchRadioPreference(I)V

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/settings/display/OPFontSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 106
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "fontSizeNames":[Ljava/lang/String;
    return-void

    .line 93
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OPFontSettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchRadioPreference(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSmallFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mNormalFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/display/OPFontSettings;->mSuperLargeFontSettingsPreference:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeFontSizePreference(I)V
    .locals 5
    .param p1, "objValue"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/display/OPFontSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "fontSizeNames":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/display/OPFontSettings;->switchRadioPreference(I)V

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/display/OPFontSettings;->mCurConfig:Landroid/content/res/Configuration;

    aget-object v4, v1, p1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 158
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/display/OPFontSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "OPFontSettings"

    const-string v4, "Unable to save font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
