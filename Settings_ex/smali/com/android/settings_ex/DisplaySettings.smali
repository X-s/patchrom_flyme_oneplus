.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_AUTO_BRIGHTNESS:Ljava/lang/String; = "auto_brightness"

.field private static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"

.field private static final KEY_DOZE:Ljava/lang/String; = "doze"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_TAP_TO_WAKE:Ljava/lang/String; = "tap_to_wake"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$3;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 257
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 258
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 292
    :goto_1
    return-void

    .line 257
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 261
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 262
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 263
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 266
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 267
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 268
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 273
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 274
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 278
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 279
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 280
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 284
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 291
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 224
    const v0, 0x1120026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 211
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 207
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 220
    const v0, 0x11200a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 347
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 353
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 357
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 359
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 363
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 365
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 369
    .end local v1    # "value":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 371
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 373
    .end local v1    # "value":I
    :cond_3
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_4
    move v2, v4

    .line 353
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_5
    move v2, v4

    .line 359
    goto :goto_1

    :cond_6
    move v2, v4

    .line 365
    goto :goto_2

    :cond_7
    move v3, v4

    .line 371
    goto :goto_3
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 228
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 230
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 232
    const-string v4, ""

    .line 250
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    return-void

    .line 234
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 235
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 236
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 237
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 240
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 241
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 242
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 243
    move v0, v2

    .line 240
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c05eb

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 297
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 298
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 299
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 300
    add-int/lit8 v4, v0, -0x1

    .line 304
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 302
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 456
    const v0, 0x7f0c0bbc

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 103
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v8, 0x7f080020

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 105
    const-string v8, "screensaver"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 106
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x112006a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_0
    const-string v8, "screen_timeout"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 113
    const-string v8, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v4, v8, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 115
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 118
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 120
    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/WarnedListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    .line 121
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 125
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 126
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    :goto_0
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 132
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 133
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    :goto_1
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 139
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 140
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 146
    const-string v8, "tap_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    .line 147
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    :goto_3
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 153
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/DropDownPreference;

    .line 155
    .local v6, "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    const v8, 0x7f0c0cdf

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lcom/android/settings_ex/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 162
    const v5, 0x7f0c0ce2

    .line 173
    .local v5, "rotateLockedResourceId":I
    :goto_4
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lcom/android/settings_ex/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v9

    :goto_5
    invoke-virtual {v6, v8}, Lcom/android/settings_ex/DropDownPreference;->setSelectedItem(I)V

    .line 176
    new-instance v8, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 190
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :goto_6
    const-string v8, "night_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    .line 191
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    if-eqz v8, :cond_1

    .line 192
    const-string v8, "uimode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/UiModeManager;

    .line 194
    .local v7, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v7}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    .line 195
    .local v1, "currentNightMode":I
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    .end local v1    # "currentNightMode":I
    .end local v7    # "uiManager":Landroid/app/UiModeManager;
    :cond_1
    return-void

    .line 128
    :cond_2
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_3
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_4
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 149
    :cond_5
    const-string v8, "tap_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 164
    .restart local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :cond_6
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v9, :cond_7

    .line 166
    const v5, 0x7f0c0ce0

    .restart local v5    # "rotateLockedResourceId":I
    goto :goto_4

    .line 169
    .end local v5    # "rotateLockedResourceId":I
    :cond_7
    const v5, 0x7f0c0ce1

    .restart local v5    # "rotateLockedResourceId":I
    goto :goto_4

    :cond_8
    move v8, v10

    .line 174
    goto :goto_5

    .line 187
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :cond_9
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 333
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0ba2

    new-instance v2, Lcom/android/settings_ex/DisplaySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 398
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "key":Ljava/lang/String;
    const-string v7, "screen_timeout"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 402
    .local v6, "value":I
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "screen_off_timeout"

    invoke-static {v7, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    int-to-long v10, v6

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v6    # "value":I
    :cond_0
    :goto_0
    const-string v7, "font_size"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 409
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 411
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v7, :cond_2

    move-object v7, p2

    .line 412
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 413
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness_mode"

    if-eqz v2, :cond_8

    move v7, v8

    :goto_1
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    .end local v2    # "auto":Z
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v7, :cond_3

    move-object v7, p2

    .line 417
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 418
    .local v6, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wake_gesture_enabled"

    if-eqz v6, :cond_9

    move v7, v8

    :goto_2
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    .end local v6    # "value":Z
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v7, :cond_4

    move-object v7, p2

    .line 421
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 422
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "doze_enabled"

    if-eqz v6, :cond_a

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 424
    .end local v6    # "value":Z
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v7, :cond_6

    move-object v7, p2

    .line 425
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 426
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "double_tap_to_wake"

    if-eqz v6, :cond_5

    move v9, v8

    :cond_5
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    .end local v6    # "value":Z
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_7

    .line 430
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 431
    .local v6, "value":I
    const-string v7, "uimode"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/UiModeManager;

    .line 433
    .local v5, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v5, v6}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .end local v5    # "uiManager":Landroid/app/UiModeManager;
    .end local v6    # "value":I
    :cond_7
    :goto_4
    return v8

    .line 404
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DisplaySettings"

    const-string v10, "could not persist screen timeout setting"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_8
    move v7, v9

    .line 413
    goto :goto_1

    .end local v2    # "auto":Z
    .local v6, "value":Z
    :cond_9
    move v7, v9

    .line 418
    goto :goto_2

    :cond_a
    move v7, v9

    .line 422
    goto :goto_3

    .line 434
    .end local v6    # "value":Z
    .end local p2    # "objValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 435
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "DisplaySettings"

    const-string v9, "could not persist night mode setting"

    invoke-static {v7, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 443
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->showDialog(I)V

    .line 451
    :goto_0
    return v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 328
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 329
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 309
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 316
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 320
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f0c05fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    return-void

    .line 310
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 385
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
