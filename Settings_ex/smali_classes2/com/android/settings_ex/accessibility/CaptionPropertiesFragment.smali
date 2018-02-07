.class public Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;


# static fields
.field private static final LINE_HEIGHT_RATIO:F = 0.0533f

.field private static final PREF_BACKGROUND_COLOR:Ljava/lang/String; = "captioning_background_color"

.field private static final PREF_BACKGROUND_OPACITY:Ljava/lang/String; = "captioning_background_opacity"

.field private static final PREF_CUSTOM:Ljava/lang/String; = "custom"

.field private static final PREF_EDGE_COLOR:Ljava/lang/String; = "captioning_edge_color"

.field private static final PREF_EDGE_TYPE:Ljava/lang/String; = "captioning_edge_type"

.field private static final PREF_FONT_SIZE:Ljava/lang/String; = "captioning_font_size"

.field private static final PREF_FOREGROUND_COLOR:Ljava/lang/String; = "captioning_foreground_color"

.field private static final PREF_FOREGROUND_OPACITY:Ljava/lang/String; = "captioning_foreground_opacity"

.field private static final PREF_LOCALE:Ljava/lang/String; = "captioning_locale"

.field private static final PREF_PRESET:Ljava/lang/String; = "captioning_preset"

.field private static final PREF_TYPEFACE:Ljava/lang/String; = "captioning_typeface"

.field private static final PREF_WINDOW_COLOR:Ljava/lang/String; = "captioning_window_color"

.field private static final PREF_WINDOW_OPACITY:Ljava/lang/String; = "captioning_window_opacity"


# instance fields
.field private mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/support/v7/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/support/v7/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mTypeface:Landroid/support/v7/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .prologue
    const v9, 0x7f0e0af4

    .line 210
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 214
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 215
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 217
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    .line 218
    const/high16 v8, 0x41800000    # 16.0f

    .line 217
    div-float v6, v7, v8

    .line 219
    .local v6, "virtualHeight":F
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 226
    .end local v6    # "virtualHeight":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 227
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 228
    invoke-static {v0, v3, v9}, Lcom/android/settings_exlib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 230
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 221
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 222
    const v8, 0x7f0f01ed

    .line 221
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 223
    .local v5, "textSize":F
    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 232
    .end local v5    # "textSize":F
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 263
    const-string/jumbo v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    .line 264
    const-string/jumbo v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 267
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a0067

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 268
    .local v7, "presetValues":[I
    const v9, 0x7f0a0066

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string/jumbo v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    .line 270
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValues([I)V

    .line 271
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 273
    const-string/jumbo v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    .line 274
    iput-boolean v12, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 276
    const v9, 0x7f0a0063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 277
    .local v3, "colorValues":[I
    const v9, 0x7f0a0062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 279
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 280
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 282
    const v9, 0x7f0a0065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 284
    .local v5, "opacityValues":[I
    const v9, 0x7f0a0064

    .line 283
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 286
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 287
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 289
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 290
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 291
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 294
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 295
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 296
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 297
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    aput v11, v1, v11

    .line 299
    const v9, 0x7f0e0af8

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 300
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 301
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 302
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 304
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 305
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 306
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 308
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 309
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 310
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 312
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 313
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 314
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 316
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    .line 317
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    .line 262
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 252
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 320
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings_ex/accessibility/ColorPreference;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 398
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 401
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 403
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const v4, 0xffff00

    or-int v2, v4, v3

    .line 411
    .local v2, "value":I
    :goto_0
    return v2

    .line 404
    .end local v2    # "value":I
    :cond_0
    if-nez v0, :cond_1

    .line 406
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .restart local v2    # "value":I
    goto :goto_0

    .line 409
    .end local v2    # "value":I
    :cond_1
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p3, "value"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 377
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    const v0, 0xffffff

    .line 380
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 392
    .local v1, "opacityValue":I
    :goto_0
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 393
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 374
    return-void

    .line 381
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x18

    if-nez v2, :cond_1

    .line 383
    const/4 v0, 0x0

    .line 384
    .restart local v0    # "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .restart local v1    # "opacityValue":I
    goto :goto_0

    .line 387
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_1
    or-int v0, p3, v3

    .line 388
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    .prologue
    const v9, 0x7f0e0af3

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 185
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_1

    .line 186
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 187
    .local v6, "styleId":I
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 189
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 190
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_2

    .line 191
    invoke-static {v0, v2, v9}, Lcom/android/settings_exlib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 193
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    .line 199
    .local v5, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v6    # "styleId":I
    :cond_1
    :goto_1
    return-void

    .line 195
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v6    # "styleId":I
    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0

    .line 202
    .restart local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 203
    .local v1, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 416
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 418
    iput-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 414
    :cond_0
    :goto_1
    return-void

    .end local v0    # "customPreset":Z
    :cond_1
    move v0, v2

    .line 415
    goto :goto_0

    .line 419
    .restart local v0    # "customPreset":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 421
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 257
    return-void
.end method

.method private updateAllPreferences()V
    .locals 11

    .prologue
    .line 337
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 338
    .local v5, "preset":I
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValue(I)V

    .line 340
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    .line 341
    .local v3, "fontSize":F
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 344
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 345
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setValue(I)V

    .line 346
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v10, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 348
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 350
    .local v4, "foregroundColor":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v4}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 352
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 353
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 354
    .local v1, "backgroundColor":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v1}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 356
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 357
    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 358
    .local v8, "windowColor":I
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v10, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v9, v10, v8}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 360
    iget-object v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 361
    .local v7, "rawTypeface":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    .end local v7    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v9}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "rawLocale":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    .end local v6    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 336
    return-void

    .line 349
    .end local v1    # "backgroundColor":I
    .end local v4    # "foregroundColor":I
    .end local v8    # "windowColor":I
    :cond_2
    const v4, 0xffffff

    .restart local v4    # "foregroundColor":I
    goto :goto_0

    .line 353
    :cond_3
    const v1, 0xffffff

    .restart local v1    # "backgroundColor":I
    goto :goto_1

    .line 357
    :cond_4
    const v8, 0xffffff

    .restart local v8    # "windowColor":I
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 159
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 160
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 155
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 110
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 120
    const v2, 0x7f04003c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f1100d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 172
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 236
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 457
    const-string/jumbo v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .line 456
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 467
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 468
    const/4 v1, 0x1

    return v1

    .line 458
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 460
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    .line 461
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 459
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 462
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 464
    const-string/jumbo v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .line 463
    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings_ex/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 431
    .local v1, "merged":I
    const-string/jumbo v2, "accessibility_captioning_foreground_color"

    .line 430
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 426
    return-void

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 435
    .restart local v1    # "merged":I
    const-string/jumbo v2, "accessibility_captioning_background_color"

    .line 434
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 436
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 439
    .restart local v1    # "merged":I
    const-string/jumbo v2, "accessibility_captioning_window_color"

    .line 438
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 440
    .end local v1    # "merged":I
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    .line 441
    const-string/jumbo v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 442
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    .line 443
    const-string/jumbo v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 445
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 446
    const-string/jumbo v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 140
    .local v0, "enabled":Z
    const v1, 0x7f1100d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 143
    const v1, 0x7f1100d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 144
    const v1, 0x7f1100d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 136
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
