.class public Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
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

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

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

.field private mTypeface:Landroid/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/settings_ex/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 10
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .prologue
    const v9, 0x7f090749

    .line 203
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 207
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 208
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    div-float v6, v7, v8

    .line 212
    .local v6, "virtualHeight":F
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v7, v6

    mul-float/2addr v7, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 219
    .end local v6    # "virtualHeight":F
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 220
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 221
    invoke-static {v0, v3, v9}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 223
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 214
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 216
    .local v5, "textSize":F
    mul-float v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 225
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

    .line 256
    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    .line 257
    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    .line 259
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 260
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f0b0045

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 261
    .local v7, "presetValues":[I
    const v9, 0x7f0b0044

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    .line 263
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValues([I)V

    .line 264
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings_ex/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 266
    const-string v9, "custom"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 267
    iput-boolean v12, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 269
    const v9, 0x7f0b0041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 270
    .local v3, "colorValues":[I
    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 272
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 273
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 275
    const v9, 0x7f0b0043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 276
    .local v5, "opacityValues":[I
    const v9, 0x7f0b0042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 279
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 280
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 282
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 283
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 284
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 287
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 288
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 289
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 290
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    aput v11, v1, v11

    .line 292
    const v9, 0x7f09074d

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 293
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 294
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 295
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 297
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 298
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 299
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 301
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 302
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 303
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 305
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_window_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    .line 306
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings_ex/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 307
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValues([I)V

    .line 309
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    .line 310
    iget-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    .line 311
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 248
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings_ex/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 327
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/android/settings_ex/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings_ex/accessibility/ColorPreference;

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 368
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/settings_ex/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 370
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 371
    const v3, 0xffff00

    and-int/2addr v3, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    or-int v2, v3, v4

    .line 375
    .local v2, "value":I
    :goto_0
    return v2

    .line 373
    .end local v2    # "value":I
    :cond_0
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

    .line 355
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 362
    .local v1, "opacityValue":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 363
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 364
    return-void

    .line 359
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    or-int v0, p3, v3

    .line 360
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 10

    .prologue
    const v9, 0x7f090748

    .line 171
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 178
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 179
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v6

    .line 180
    .local v6, "styleId":I
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v8, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v7, v4, v8, v6}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 182
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 183
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_2

    .line 184
    invoke-static {v0, v2, v9}, Lcom/android/settings_ex/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 186
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v5

    .line 192
    .local v5, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 193
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 188
    .end local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_2
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1

    .line 195
    .restart local v5    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_3
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 196
    .local v1, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v8, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/accessibility/PresetPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 380
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    iput-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 387
    :cond_0
    :goto_1
    return-void

    .end local v0    # "customPreset":Z
    :cond_1
    move v0, v2

    .line 379
    goto :goto_0

    .line 383
    .restart local v0    # "customPreset":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 385
    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 253
    return-void
.end method

.method private updateAllPreferences()V
    .locals 9

    .prologue
    .line 330
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v3

    .line 331
    .local v3, "preset":I
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings_ex/accessibility/PresetPreference;->setValue(I)V

    .line 333
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 334
    .local v2, "fontSize":F
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 338
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/accessibility/EdgeTypePreference;->setValue(I)V

    .line 339
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/accessibility/ColorPreference;->setValue(I)V

    .line 341
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 342
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 343
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;I)V

    .line 345
    iget-object v5, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 346
    .local v5, "rawTypeface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v5, :cond_0

    const-string v5, ""

    .end local v5    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "rawLocale":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-nez v4, :cond_1

    const-string v4, ""

    .end local v4    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/settings_ex/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 152
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 153
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 103
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 106
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 107
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 108
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 113
    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 121
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f0f0039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 125
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 168
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 243
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 420
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 431
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 432
    const/4 v1, 0x1

    return v1

    .line 422
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 423
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 426
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings_ex/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 427
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings_ex/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings_ex/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 394
    .local v1, "merged":I
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 413
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 414
    return-void

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 397
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 398
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 400
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-eq v2, p1, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_6

    .line 401
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings_ex/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings_ex/accessibility/ColorPreference;Lcom/android/settings_ex/accessibility/ColorPreference;)I

    move-result v1

    .line 402
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 404
    .end local v1    # "merged":I
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings_ex/accessibility/ColorPreference;

    if-ne v2, p1, :cond_7

    .line 405
    const-string v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 406
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings_ex/accessibility/PresetPreference;

    if-ne v2, p1, :cond_8

    .line 407
    const-string v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 409
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings_ex/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 410
    const-string v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 133
    .local v0, "enabled":Z
    const v1, 0x7f0f0038

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 136
    const v1, 0x7f0f0037

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 137
    const v1, 0x7f0f0036

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings_ex/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 145
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
