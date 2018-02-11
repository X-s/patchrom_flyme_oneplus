.class public Lcom/oneplus/settings/better/OPScreenColorMode;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPScreenColorMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPScreenColorMode$1;,
        Lcom/oneplus/settings/better/OPScreenColorMode$2;
    }
.end annotation


# static fields
.field private static final KEY_SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS:Ljava/lang/String; = "screen_color_mode_adaptive_model_settings"

.field private static final KEY_SCREEN_COLOR_MODE_BASIC_SETTINGS:Ljava/lang/String; = "screen_color_mode_basic_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DCI_P3_SETTINGS:Ljava/lang/String; = "screen_color_mode_dci_p3_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFAULT_SETTINGS:Ljava/lang/String; = "screen_color_mode_default_settings"

.field private static final KEY_SCREEN_COLOR_MODE_DEFINED_SETTINGS:Ljava/lang/String; = "screen_color_mode_defined_settings"

.field private static final KEY_SCREEN_COLOR_MODE_SEEKBAR:Ljava/lang/String; = "screen_color_mode_seekbar"

.field private static final KEY_SCREEN_COLOR_MODE_SOFT_SETTINGS:Ljava/lang/String; = "screen_color_mode_soft_settings"

.field private static final KEY_SCREEN_COLOR_MODE_TITLE_SUMMARY:Ljava/lang/String; = "oneplus_screen_color_mode_title_summary"

.field public static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS_VALUE:I = 0x5

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field private static final SCREEN_COLOR_MODE_SOFT_SETTINGS_VALUE:I = 0x6

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static isSupportAdaptive:Z = false

.field private static isSupportDcip3:Z = false

.field private static isSupportSoft:Z = false

.field private static final sDCI_P3Path:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/DCI_P3"

.field private static final sRGBPath:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/SRGB"

.field private static final s_OPEN_VALUE:Ljava/lang/String; = "mode = 1"


# instance fields
.field private isSupportReadingMode:Z

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mContext:Landroid/content/Context;

.field private mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

.field private mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeContentObserver:Landroid/database/ContentObserver;

.field private mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

.field private mScreenColorModeValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    return v0
.end method

.method static synthetic -get10(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$2;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPScreenColorMode$2;-><init>()V

    .line 420
    sput-object v0, Lcom/oneplus/settings/better/OPScreenColorMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/oneplus/settings/better/OPScreenColorMode$1;

    .line 118
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 117
    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPScreenColorMode$1;-><init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 42
    return-void
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 403
    const/16 v3, 0x2b

    .line 401
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 404
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 405
    iget-boolean v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setActiveMode(I)V

    .line 407
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 400
    :cond_0
    return-void

    .line 409
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

    .line 216
    if-ne v2, p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 223
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 227
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 228
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 231
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 239
    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 246
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 254
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_5
    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 262
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x270f

    return v0
.end method

.method public getScreenColorModeSettingsValue()I
    .locals 4

    .prologue
    .line 391
    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, 0x1

    .line 390
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, "value":I
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->addPreferencesFromResource(I)V

    .line 84
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    .line 86
    const-string/jumbo v0, "screen_color_mode_default_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 87
    const-string/jumbo v0, "screen_color_mode_basic_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 88
    const-string/jumbo v0, "screen_color_mode_defined_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 89
    const-string/jumbo v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 90
    const-string/jumbo v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 91
    const-string/jumbo v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    .line 92
    const-string/jumbo v0, "oneplus_screen_color_mode_title_summary"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    .line 93
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPSeekBarPreference$OPColorModeSeekBarChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings_ex/ui/RadioButtonPreference$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mOPScreenColorModeSummary:Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 102
    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.dcip3.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    .line 104
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportDcip3:Z

    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v0, "screen_color_mode_dci_p3_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.display.adaptive.mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    .line 108
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportAdaptive:Z

    if-nez v0, :cond_1

    .line 109
    const-string/jumbo v0, "screen_color_mode_adaptive_model_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.display.soft.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    .line 112
    sget-boolean v0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportSoft:Z

    if-nez v0, :cond_2

    .line 113
    const-string/jumbo v0, "screen_color_mode_soft_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    .line 80
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 205
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 367
    iput p2, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    .line 368
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v0, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    iget v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 374
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

    .line 270
    if-nez p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 275
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 290
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 292
    :cond_2
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 301
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 304
    :cond_4
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_7

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 312
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 313
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 318
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mSeekBarpreference:Lcom/oneplus/settings/ui/OPSeekBarPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    .line 319
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_9

    .line 320
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 324
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 327
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 330
    :cond_8
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_b

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 333
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 336
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    .line 339
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 342
    :cond_a
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefaultSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 345
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeBasicSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDefinedSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeDciP3Settings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeAdaptiveModelSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 349
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeSoftSettings:Lcom/android/settings_ex/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setChecked(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_c

    .line 351
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeSettingsValue(I)V

    .line 354
    :cond_c
    const-string/jumbo v0, "screen_color_mode_seekbar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 153
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getScreenColorModeSettingsValue()I

    move-result v0

    .line 170
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->updateRadioButtons(I)V

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "night_display_activated"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 177
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 175
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 179
    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeContentObserver:Landroid/database/ContentObserver;

    .line 178
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 151
    return-void
.end method

.method public onSaveScreenColorModeSettingsValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "screen_color_mode_settings_value"

    .line 396
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return-void
.end method

.method public onSaveScreenColorModeValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPScreenColorMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 417
    const-string/jumbo v1, "oem_screen_better_value"

    .line 416
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 379
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 385
    iget v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mScreenColorModeValue:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPScreenColorMode;->onSaveScreenColorModeValue(I)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/settings/better/OPScreenColorMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 384
    return-void
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string/jumbo v3, "0"

    .line 185
    .local v3, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 192
    if-eqz v2, :cond_0

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 200
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 195
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 190
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    if-eqz v1, :cond_1

    .line 194
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 195
    :catch_2
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 192
    :goto_3
    if-eqz v1, :cond_2

    .line 194
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 191
    :cond_2
    :goto_4
    throw v4

    .line 195
    :catch_3
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 189
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
