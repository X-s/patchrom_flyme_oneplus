.class public Lcom/oneplus/settings/better/OPScreenColorMode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPScreenColorMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPScreenColorMode$1;
    }
.end annotation


# static fields
.field private static final KEY_SCREEN_COLOR_MODE_BASIC_SETTINGS:Ljava/lang/String; = "screen_color_mode_basic_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DCI_P3_SETTINGS:Ljava/lang/String; = "screen_color_mode_dci_p3_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFAULT_SETTINGS:Ljava/lang/String; = "screen_color_mode_default_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFINED_SETTINGS:Ljava/lang/String; = "screen_color_mode_defined_settings"

.field private static final KEY_SCREEN_COLOR_MODE_SEEKBAR:Ljava/lang/String; = "screen_color_mode_seekbar"

.field private static final KEY_SCREEN_COLOR_MODE_TITLE_SUMMARY:Ljava/lang/String; = "oneplus_screen_color_mode_title_summary"

.field public static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field private static final sDCI_P3Path:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/DCI_P3"

.field private static final sRGBPath:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/SRGB"

.field private static final s_OPEN_VALUE:Ljava/lang/String; = "mode = 1"


# instance fields
.field private isSupportReadingMode:Z

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mContext:Landroid/content/Context;

.field private mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

.field private mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeContentObserver:Landroid/database/ContentObserver;

.field private mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$1;

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 91
    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 36
    return-void
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 319
    const/16 v3, 0x2b

    .line 317
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 320
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 321
    iget-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setActiveMode(I)V

    .line 323
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 316
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    add-int/lit16 v2, v2, 0x200

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0
.end method

.method private updateRadioButtons(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    if-ne v2, p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 193
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 199
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 211
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x270f

    return v0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, 0x1

    .line 306
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 308
    .local v0, "value":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->addPreferencesFromResource(I)V

    .line 69
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    .line 71
    const-string/jumbo v1, "screen_color_mode_default_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 72
    const-string/jumbo v1, "screen_color_mode_basic_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 73
    const-string/jumbo v1, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 74
    const-string/jumbo v1, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 75
    const-string/jumbo v1, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    .line 77
    const-string/jumbo v1, "screen_color_mode_seekbar"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 84
    new-instance v1, Lcom/oneplus/settings/OneplusColorManager;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 85
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.dcip3.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "isSupportDcip3":Z
    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v1, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 283
    iput p2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v0, :cond_0

    .line 285
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    add-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings_ex/ui/RadioButtonPreference;)V
    .locals 6
    .param p1, "emiter"    # Lcom/android/settings_ex/ui/RadioButtonPreference;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 235
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 237
    :cond_2
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 244
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 247
    :cond_4
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_7

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 254
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 259
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 266
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 269
    :cond_8
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 125
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    .line 142
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateRadioButtons(I)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 147
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 150
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    const-string/jumbo v1, "screen_color_mode_settings_value"

    .line 312
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "oem_screen_better_value"

    .line 332
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 295
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 301
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeValue(I)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 300
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v3, "0"

    .line 157
    .local v3, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 159
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 164
    if-eqz v2, :cond_0

    .line 166
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 172
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 167
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 162
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v1, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 167
    :catch_2
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 164
    :goto_3
    if-eqz v1, :cond_2

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    :cond_2
    :goto_4
    throw v4

    .line 167
    :catch_3
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
