.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;,
        Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 100.0f

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_AUTO_BRIGHTNESS:Ljava/lang/String; = "auto_brightness"

.field private static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"

.field private static final KEY_BACK_TOP_THEME:Ljava/lang/String; = "back_topic_theme"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CAMERA_GESTURE:Ljava/lang/String; = "camera_gesture"

.field private static final KEY_DARK_MODE:Ljava/lang/String; = "dark_mode"

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final KEY_DISPLAY_SYSTEM:Ljava/lang/String; = "display_system"

.field private static final KEY_DOZE:Ljava/lang/String; = "doze"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_LAST_COLOR:Ljava/lang/String; = "last_color"

.field private static final KEY_LED_SETTINGS:Ljava/lang/String; = "led_settings"

.field private static final KEY_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field private static final KEY_LOCKGUARD_WALLPAPER:Ljava/lang/String; = "lockguard_wallpaper_settings"

.field private static final KEY_MANUAL_BRIGHT:Ljava/lang/String; = "manual_brightness_displays"

.field private static final KEY_MSM_SCREEN_BETTER:Ljava/lang/String; = "msm_screen_better_settings"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final KEY_NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled_op"

.field private static final KEY_NIGHT_MODE_LEVEL:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_PROX_WAKE:Ljava/lang/String; = "oneplus_proximity_wake"

.field private static final KEY_SCREEN_BETTER:Ljava/lang/String; = "screen_better_settings"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_COLOR_MODE:Ljava/lang/String; = "screen_color_mode"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_TAP_TO_WAKE:Ljava/lang/String; = "tap_to_wake"

.field private static final KEY_THEME_ACCENT_COLOR:Ljava/lang/String; = "theme_accent_color"

.field private static final KEY_THEME_MODE:Ljava/lang/String; = "op_theme_mode"

.field private static final MAX_COLOR_COUNT:I = 0x7

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_black_mode_accent_color"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_black_mode_accent_color_index"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_white_mode_accent_color"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_white_mode_accent_color_index"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final OXYGEN_THEME_INTENT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme"

.field private static final OXYGEN_THEME_INTENT_EXTRA:Ljava/lang/String; = "oxygen_theme_status"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "customization_settings"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"

.field private static final THEME_ANDROID_MODE:I = 0x2

.field private static final THEME_DARK_MODE:I = 0x1

.field private static final THEME_LIGHT_MODE:I = 0x0

.field private static final THEME_MODE_ACTION:Ljava/lang/String; = "android.settings.OEM_THEME_MODE"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"


# instance fields
.field private isAutoSwitchClickedDrivenBrightnessChange:Z

.field private mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBacktopThemePreference:Landroid/preference/SwitchPreference;

.field private mBlackColorStringIds:[I

.field private mBlackColors:[Ljava/lang/String;

.field private mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private mColors:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurentValue:I

.field private mDarkModeEnable:I

.field private mDarkModePreferce:Landroid/preference/SwitchPreference;

.field private mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

.field private mDefaultThemeMode:I

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mExternalChange:Z

.field private mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLedSettingsPreference:Landroid/preference/Preference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLockWallPaperPreference:Landroid/preference/Preference;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mMsmScreenPreference:Landroid/preference/Preference;

.field private mNewController:Z

.field private mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

.field private mNightModeHandler:Landroid/os/Handler;

.field private mNightModeLevel:I

.field private mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

.field private mNightModeObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/preference/SwitchPreference;

.field private mPower:Landroid/os/IPowerManager;

.field private mPreValue:I

.field private mProxWakePreference:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

.field private mScreenColorModePreference:Landroid/preference/Preference;

.field private mScreenPreference:Landroid/preference/Preference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSystemRootPreference:Landroid/preference/PreferenceCategory;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;

.field private mThemeModePreference:Landroid/preference/ListPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

.field private mWhiteColorStringIds:[I

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1367
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 125
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 181
    iput-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    .line 190
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultThemeMode:I

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 259
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 295
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 327
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 730
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$3;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    .line 1638
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1639
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->killSelf()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isProxWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/DisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateMode()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/DisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateAutoSwitchDrivenSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DisplaySettings;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/ui/OPNightModeLevelPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 744
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
    .line 828
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 831
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 832
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 866
    :goto_1
    return-void

    .line 831
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 835
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 836
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 837
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 840
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 841
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 842
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 846
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

    .line 847
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 848
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 850
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 852
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 853
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 865
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

    .line 854
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

    .line 858
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 865
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getColorIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1291
    const/4 v1, 0x0

    .line 1292
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_black_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1294
    .local v0, "dbValue":I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x7

    .line 1298
    .end local v0    # "dbValue":I
    :goto_0
    return v1

    .restart local v0    # "dbValue":I
    :cond_0
    move v1, v0

    .line 1294
    goto :goto_0

    .line 1296
    .end local v0    # "dbValue":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_white_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "customization_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getThemeModeValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1088
    if-ne p1, v1, :cond_1

    .line 1089
    const/4 p1, 0x0

    .line 1095
    .end local p1    # "value":I
    :cond_0
    :goto_0
    return p1

    .line 1090
    .restart local p1    # "value":I
    :cond_1
    if-nez p1, :cond_2

    move p1, v0

    .line 1091
    goto :goto_0

    .line 1092
    :cond_2
    if-ne p1, v0, :cond_0

    move p1, v1

    .line 1093
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 311
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAccentColors(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 214
    new-array v0, v3, [Ljava/lang/String;

    const v1, 0x7f0e0051

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0e0052

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0e0053

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0e0054

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0e0055

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0e0056

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0e0057

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0e0058

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    .line 224
    new-array v0, v3, [Ljava/lang/String;

    const v1, 0x7f0e0059

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f0e005a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0e005b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f0e005c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f0e005d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f0e005e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0e005f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0e0060

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    .line 239
    :cond_0
    :goto_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    .line 248
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    .line 257
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    goto :goto_0

    .line 239
    :array_0
    .array-data 4
        0x7f0c01f2
        0x7f0c01f3
        0x7f0c01f4
        0x7f0c01f5
        0x7f0c01f6
        0x7f0c01f7
        0x7f0c01f8
        0x7f0c01f9
    .end array-data

    .line 248
    :array_1
    .array-data 4
        0x7f0c01fa
        0x7f0c01fb
        0x7f0c01fc
        0x7f0c01fd
        0x7f0c01fe
        0x7f0c01ff
        0x7f0c0200
        0x7f0c0201
    .end array-data
.end method

.method private isAccentColorPreferenceEnabled()Z
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 774
    const v0, 0x1120026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 785
    const v0, 0x11200b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 778
    const v3, 0x10e00a4

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 780
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_0
    move v0, v2

    .line 778
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_1
    move v1, v2

    .line 780
    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 754
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 754
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 759
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 750
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

.method private static isProxWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 764
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 765
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x8

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
    .line 770
    const v0, 0x11200a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private killSelf()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "home":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->finish()V

    .line 293
    return-void
.end method

.method private onSaveNightModeSeekBarVale(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 728
    return-void
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 4

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_screen_better_value"

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1280
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 1282
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 1284
    :cond_0
    return-void
.end method

.method private saveColorInfo(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1303
    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x7

    .line 1304
    .local v0, "tempIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1306
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1312
    .end local v0    # "tempIndex":I
    :goto_1
    return-void

    :cond_0
    move v0, p1

    .line 1303
    goto :goto_0

    .line 1308
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1310
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private sendTheme(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fromThemeSwitch"    # Z

    .prologue
    .line 1317
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1319
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->killSelf()V

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DisplaySettings;->saveColorInfo(I)V

    .line 1322
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.OEM_COLOR_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "oem_color_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1586
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1587
    const/4 p1, 0x2

    .line 1590
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :goto_0
    return-void

    .line 1591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 1597
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :goto_0
    return-void

    .line 1598
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1626
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-nez v1, :cond_0

    .line 1627
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1635
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1630
    .local v0, "value":I
    const-string v1, "display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value from database is when closing switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1632
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 1696
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1702
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1703
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1705
    return-void
.end method

.method private updateDozeMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const v0, 0x7f0c02a5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 947
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 949
    :cond_0
    return-void

    .line 945
    :cond_1
    const v0, 0x7f0c01e1

    goto :goto_0
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 304
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 307
    :cond_0
    return-void

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1607
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMode mAutomaticAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1609
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1611
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1613
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1614
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1621
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1052
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1643
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-nez v2, :cond_1

    .line 1646
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_0

    .line 1647
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1693
    :goto_0
    return-void

    .line 1651
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    goto :goto_0

    .line 1654
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1656
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 1657
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    goto :goto_0

    .line 1665
    :cond_2
    const/4 v0, 0x0

    .line 1666
    .local v0, "isOK":Z
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    if-nez v2, :cond_3

    .line 1667
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1668
    const/4 v0, 0x1

    .line 1671
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-nez v2, :cond_4

    .line 1672
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1673
    const/4 v0, 0x1

    .line 1676
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1678
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 1679
    const-string v2, "display"

    const-string v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1683
    :cond_5
    const-string v2, "display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider (mMaximumBacklight - mMinimumBacklight) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1688
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1690
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 952
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 953
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 954
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "oem_acc_breath_light"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 955
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 956
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    iget v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    if-ne v6, v7, :cond_c

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 960
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_brightness_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 962
    .local v0, "brightnessMode":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_d

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 963
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateMode()V

    .line 964
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSlider()V

    .line 968
    .end local v0    # "brightnessMode":I
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 969
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "wake_gesture_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 970
    .local v5, "value":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_e

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 974
    .end local v5    # "value":I
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "doze_enabled"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 976
    .restart local v5    # "value":I
    if-ne v5, v7, :cond_f

    move v1, v7

    .line 977
    .local v1, "dozeChecked":Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 978
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 982
    .end local v1    # "dozeChecked":Z
    .end local v5    # "value":I
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    .line 983
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "prox_wake_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 984
    .restart local v5    # "value":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_10

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 989
    .end local v5    # "value":I
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_5

    .line 990
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "double_tap_to_wake"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 991
    .restart local v5    # "value":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_11

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 995
    .end local v5    # "value":I
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    .line 996
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "camera_gesture_disabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 997
    .restart local v5    # "value":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v5, :cond_12

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1001
    .end local v5    # "value":I
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_7

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "camera_double_tap_power_gesture_disabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1004
    .restart local v5    # "value":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v5, :cond_13

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1007
    .end local v5    # "value":I
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v6, :cond_9

    .line 1009
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1010
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getColorIndex()I

    move-result v2

    .line 1011
    .local v2, "lastColor":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v6, v11}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1012
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    if-eqz v6, :cond_14

    .line 1013
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v6, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 1017
    :goto_8
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setEnabled(Z)V

    .line 1018
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v6, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v9, "oem.op_dark_mode.support"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1020
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1025
    .end local v2    # "lastColor":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "night_mode_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_15

    move v3, v7

    .line 1027
    .local v3, "opNightModeEnabled":Z
    :goto_9
    const-string v6, "TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetNightAndSaturationMode--opNightModeEnabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_a

    .line 1029
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1031
    :cond_a
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    if-eqz v6, :cond_b

    .line 1032
    if-eqz v3, :cond_16

    .line 1033
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1034
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1035
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0123

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1042
    :cond_b
    :goto_a
    return-void

    .end local v3    # "opNightModeEnabled":Z
    :cond_c
    move v6, v8

    .line 956
    goto/16 :goto_0

    .restart local v0    # "brightnessMode":I
    :cond_d
    move v6, v8

    .line 962
    goto/16 :goto_1

    .end local v0    # "brightnessMode":I
    .restart local v5    # "value":I
    :cond_e
    move v6, v8

    .line 970
    goto/16 :goto_2

    :cond_f
    move v1, v8

    .line 976
    goto/16 :goto_3

    :cond_10
    move v6, v8

    .line 984
    goto/16 :goto_4

    :cond_11
    move v6, v8

    .line 991
    goto/16 :goto_5

    :cond_12
    move v6, v8

    .line 997
    goto/16 :goto_6

    :cond_13
    move v6, v8

    .line 1004
    goto/16 :goto_7

    .line 1015
    .end local v5    # "value":I
    .restart local v2    # "lastColor":I
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_14
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0051

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto/16 :goto_8

    .end local v2    # "lastColor":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_15
    move v3, v8

    .line 1025
    goto :goto_9

    .line 1037
    .restart local v3    # "opNightModeEnabled":Z
    :cond_16
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1038
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_a
.end method

.method private updateThemeModePreferenceDescription(I)V
    .locals 3
    .param p1, "themeMode"    # I

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 822
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 824
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 15
    .param p1, "currentTimeout"    # J

    .prologue
    .line 790
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 792
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/32 v10, 0xea60

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 793
    .local v5, "time":Ljava/lang/Long;
    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-gez v9, :cond_0

    .line 795
    const-string v4, ""

    .line 814
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    return-void

    .line 797
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 798
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 799
    .local v8, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v9, v1

    if-nez v9, :cond_2

    .line 800
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 802
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 803
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v8

    if-ge v2, v9, :cond_4

    .line 804
    aget-object v9, v8, v2

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 805
    .local v6, "timeout":J
    cmp-long v9, p1, v6

    if-ltz v9, :cond_3

    .line 806
    move v0, v2

    .line 803
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 809
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c05be

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 811
    .restart local v4    # "summary":Ljava/lang/String;
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 871
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 872
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 873
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 874
    add-int/lit8 v4, v0, -0x1

    .line 878
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 876
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1364
    const v0, 0x7f0c0b8d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 356
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 358
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v11, Lcom/android/settings_ex/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v8, v11}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 360
    const v8, 0x7f080020

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 361
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 362
    .local v5, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v5}, Lcom/android/settings_ex/DisplaySettings;->initAccentColors(Landroid/content/res/Resources;)V

    .line 384
    const-string v8, "screensaver"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 385
    const-string v8, "screen_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    .line 386
    const-string v8, "display_system"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    .line 387
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x112006a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_0
    const-string v8, "screen_timeout"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 394
    const-string v8, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v6, v8, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 396
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 397
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 399
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 401
    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/WarnedListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    .line 402
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 406
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 407
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 420
    :goto_0
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 421
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 422
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 428
    :goto_1
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isProxWakeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 429
    const-string v8, "oneplus_proximity_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    .line 430
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 510
    :goto_2
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 511
    const-string v8, "dark_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    .line 512
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "oem_black_mode"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    .line 514
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    iget v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    if-nez v8, :cond_e

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 515
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    const-string v8, "op_theme_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "oem_black_mode"

    iget v12, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultThemeMode:I

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 519
    .local v7, "themeMode":I
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 521
    invoke-direct {p0, v7}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v11, "oem.op_dark_mode.support"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 523
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 527
    :cond_2
    const-string v8, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 529
    const-string v8, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 532
    :cond_3
    const-string v8, "back_topic_theme"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    .line 533
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 534
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_4

    .line 536
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_4
    const-string v8, "screen_better_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    .line 541
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 542
    const-string v8, "msm_screen_better_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    .line 543
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "oem_acc_breath_light"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 545
    const-string v8, "notify_light_enable"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    .line 546
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 547
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    iget v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    if-nez v11, :cond_f

    :goto_4
    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 549
    const-string v8, "lockguard_wallpaper_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/preference/Preference;

    .line 550
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 552
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 555
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v10, "camera_gesture"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v10, "lift_to_wake"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v10, "tap_to_wake"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 559
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v10, "auto_rotate"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 562
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    .line 563
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    .line 564
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    .line 565
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 567
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "oem.autobrightctl.animation.support"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    .line 570
    const-string v8, "manual_brightness_displays"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 571
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 572
    new-instance v8, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    .line 573
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v8}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 575
    const-string v8, "theme_accent_color"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 576
    const-string v8, "led_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    .line 577
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 578
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    invoke-virtual {v8, v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 579
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v9, 0x7f0e0051

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 585
    :cond_5
    :goto_5
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v9, 0x7f0c0089

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 586
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 588
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 589
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 592
    :cond_6
    const-string v8, "night_mode_enabled_op"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    .line 593
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_7

    .line 594
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 596
    :cond_7
    const-string v8, "night_mode_level_op"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    .line 597
    const-string v8, "screen_color_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    .line 598
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v8, :cond_8

    .line 599
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V

    .line 602
    :cond_8
    const-string v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "mDev":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDev devie name  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    const-string v8, "msm8974"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 605
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_9

    .line 606
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 608
    :cond_9
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 609
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void

    .line 409
    .end local v1    # "mDev":Ljava/lang/String;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v7    # "themeMode":I
    :cond_b
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :cond_c
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 432
    :cond_d
    const-string v8, "oneplus_proximity_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    move v8, v10

    .line 514
    goto/16 :goto_3

    .restart local v7    # "themeMode":I
    :cond_f
    move v9, v10

    .line 547
    goto/16 :goto_4

    .line 580
    .restart local v4    # "pm":Landroid/os/PowerManager;
    :cond_10
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 581
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    invoke-virtual {v8, v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 582
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v9, 0x7f0e0059

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 611
    .restart local v1    # "mDev":Ljava/lang/String;
    :cond_11
    const-string v8, "msm8994"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 612
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_12

    .line 613
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 615
    :cond_12
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 616
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 618
    :cond_13
    const-string v8, "msm8996"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 619
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_14

    .line 620
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 622
    :cond_14
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_a

    .line 623
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 931
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0b73

    new-instance v2, Lcom/android/settings_ex/DisplaySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DisplaySettings$4;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 940
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->stopObserving()V

    .line 926
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 927
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 4
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v2, 0xff

    .line 1424
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    .line 1437
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v3, :cond_1

    .line 1438
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1439
    .local v1, "val":I
    if-le v1, v2, :cond_0

    move v1, v2

    .line 1440
    :cond_0
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    .line 1441
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    .line 1453
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 1443
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v3, :cond_3

    .line 1444
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1445
    .restart local v1    # "val":I
    if-le v1, v2, :cond_2

    move v1, v2

    .line 1446
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    goto :goto_0

    .line 1448
    .end local v1    # "val":I
    :cond_3
    int-to-float v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 1449
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 917
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 918
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 919
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1101
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 1102
    .local v7, "key":Ljava/lang/String;
    const-string v12, "screen_timeout"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1104
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1105
    .local v11, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "screen_off_timeout"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    int-to-long v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    .end local v11    # "value":I
    :cond_0
    :goto_0
    const-string v12, "op_theme_mode"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1113
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1114
    .restart local v11    # "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_black_mode"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_black_mode"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1116
    const-string v12, "op_theme_mode"

    invoke-static {v12, v11}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1117
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.settings.OEM_THEME_MODE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1119
    const-string v12, "oem_theme_mode"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1121
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->killSelf()V

    .line 1122
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1127
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "value":I
    :cond_1
    :goto_1
    const-string v12, "font_size"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1128
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1130
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 1131
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1132
    .local v2, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness_mode"

    if-eqz v2, :cond_3

    const/4 v12, 0x1

    :goto_2
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1133
    const-string v12, "display"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "auto : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1137
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1138
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->updateAutoSwitchDrivenSlider()V

    .line 1139
    const/4 v12, 0x1

    .line 1273
    .end local v2    # "auto":Z
    :goto_3
    return v12

    .line 1107
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 1108
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v12, "DisplaySettings"

    const-string v13, "could not persist screen timeout setting"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1123
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 1124
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v12, "DisplaySettings"

    const-string v13, "could not persist screen timeout setting"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1132
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v2    # "auto":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 1142
    .end local v2    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    move-object/from16 v12, p2

    .line 1143
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1144
    .local v11, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wake_gesture_enabled"

    if-eqz v11, :cond_d

    const/4 v12, 0x1

    :goto_4
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1146
    .end local v11    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_6

    move-object/from16 v12, p2

    .line 1147
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1148
    .restart local v11    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "doze_enabled"

    if-eqz v11, :cond_e

    const/4 v12, 0x1

    :goto_5
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 1152
    .end local v11    # "value":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_7

    move-object/from16 v12, p2

    .line 1153
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1154
    .restart local v11    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "prox_wake_enabled"

    if-eqz v11, :cond_f

    const/4 v12, 0x1

    :goto_6
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    .end local v11    # "value":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_8

    move-object/from16 v12, p2

    .line 1159
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1160
    .restart local v11    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "double_tap_to_wake"

    if-eqz v11, :cond_10

    const/4 v12, 0x1

    :goto_7
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    .end local v11    # "value":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_9

    move-object/from16 v12, p2

    .line 1163
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1164
    .restart local v11    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "camera_gesture_disabled"

    if-eqz v11, :cond_11

    const/4 v12, 0x0

    :goto_8
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1167
    .end local v11    # "value":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_a

    move-object/from16 v12, p2

    .line 1168
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1169
    .restart local v11    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "camera_double_tap_power_gesture_disabled"

    if-eqz v11, :cond_12

    const/4 v12, 0x0

    :goto_9
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1172
    .end local v11    # "value":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_b

    .line 1174
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1175
    .local v11, "value":I
    const-string v12, "uimode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/UiModeManager;

    .line 1177
    .local v10, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v10, v11}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1183
    .end local v10    # "uiManager":Landroid/app/UiModeManager;
    .end local v11    # "value":I
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_13

    .line 1184
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1185
    .local v11, "value":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    if-nez v12, :cond_c

    .line 1186
    new-instance v12, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 1188
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v12, v11}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->setValue(Z)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1191
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1144
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1148
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1154
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 1160
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1164
    :cond_11
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 1169
    :cond_12
    const/4 v12, 0x1

    goto :goto_9

    .line 1178
    .end local v11    # "value":Z
    :catch_2
    move-exception v3

    .line 1179
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v12, "DisplaySettings"

    const-string v13, "could not persist night mode setting"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1193
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_16

    .line 1194
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1195
    .restart local v11    # "value":Z
    if-eqz v11, :cond_15

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DisplaySettings;->updateNotifyLightStatus(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    if-eqz v12, :cond_14

    .line 1197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1199
    :cond_14
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1195
    :cond_15
    const/4 v12, 0x0

    goto :goto_b

    .line 1202
    .end local v11    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_16
    const-string v12, "theme_accent_color"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    move-object/from16 v9, p2

    .line 1203
    check-cast v9, Ljava/lang/String;

    .line 1204
    .local v9, "theme":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1205
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    .line 1229
    .end local v9    # "theme":Ljava/lang/String;
    :cond_17
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1a

    .line 1230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1231
    .local v4, "enabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "night_mode_enabled"

    if-eqz v4, :cond_20

    const/4 v12, 0x1

    :goto_d
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "oem_nightmode_progress_status"

    const/16 v14, 0x190

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1235
    .local v8, "progress":I
    if-eqz v4, :cond_26

    .line 1236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_18

    .line 1237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0123

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1241
    :cond_18
    if-ltz v8, :cond_21

    const/16 v12, 0x64

    if-ge v8, v12, :cond_21

    .line 1242
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1254
    :cond_19
    :goto_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1273
    .end local v4    # "enabled":Z
    .end local v8    # "progress":I
    :cond_1a
    :goto_f
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 1207
    .restart local v9    # "theme":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/Utils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1208
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v12, v12

    if-ge v5, v12, :cond_17

    .line 1209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1210
    if-nez v5, :cond_1c

    .line 1211
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1213
    :cond_1c
    add-int/lit8 v12, v5, 0x7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1208
    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1218
    .end local v5    # "i":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings_ex/Utils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1219
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v12, v12

    if-ge v5, v12, :cond_17

    .line 1220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 1221
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1219
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1231
    .end local v5    # "i":I
    .end local v9    # "theme":Ljava/lang/String;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v4    # "enabled":Z
    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 1243
    .restart local v8    # "progress":I
    :cond_21
    const/16 v12, 0x64

    if-lt v8, v12, :cond_22

    const/16 v12, 0xc7

    if-gt v8, v12, :cond_22

    .line 1244
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_e

    .line 1245
    :cond_22
    const/16 v12, 0xc8

    if-lt v8, v12, :cond_23

    const/16 v12, 0x12b

    if-gt v8, v12, :cond_23

    .line 1246
    const/4 v12, 0x3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_e

    .line 1247
    :cond_23
    const/16 v12, 0x12c

    if-lt v8, v12, :cond_24

    const/16 v12, 0x18f

    if-gt v8, v12, :cond_24

    .line 1248
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_e

    .line 1249
    :cond_24
    const/16 v12, 0x190

    if-lt v8, v12, :cond_25

    const/16 v12, 0x1f3

    if-gt v8, v12, :cond_25

    .line 1250
    const/4 v12, 0x5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_e

    .line 1251
    :cond_25
    const/16 v12, 0x1f4

    if-lt v8, v12, :cond_19

    const/16 v12, 0x258

    if-gt v8, v12, :cond_19

    .line 1252
    const/4 v12, 0x6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_e

    .line 1256
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v12, :cond_27

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    if-eqz v12, :cond_27

    .line 1257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/preference/Preference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1261
    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "screen_color_mode_settings_value"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1263
    .local v11, "value":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_28

    .line 1264
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f

    .line 1266
    :cond_28
    const/4 v12, 0x2

    if-ne v11, v12, :cond_29

    .line 1267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v12}, Lcom/oneplus/settings/OneplusColorManager;->setsRGB()V

    goto/16 :goto_f

    .line 1268
    :cond_29
    const/4 v12, 0x3

    if-ne v11, v12, :cond_1a

    .line 1269
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->resetDefinedScreenColorModeValue()V

    goto/16 :goto_f
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1330
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    if-ne p1, v5, :cond_2

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1332
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->showDialog(I)V

    .line 1359
    :goto_0
    return v4

    .line 1335
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    :cond_1
    move v4, v3

    .line 1359
    goto :goto_0

    .line 1339
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "back_topic_theme"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1340
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_acc_backgap_theme"

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1341
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1342
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "switch_state"

    const-string v5, "on"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1346
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "switch_state"

    const-string v5, "off"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1351
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "msm_screen_better_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1352
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1353
    .local v2, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.OPScreenBetterActivity"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1355
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1066
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    if-ne v2, p2, :cond_1

    .line 1067
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 1084
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_0
    return v2

    .line 1068
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lockguard_wallpaper_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.oneplus.keyguardwallpaper"

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1075
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1076
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.keyguardwallpaper"

    const-string v3, "com.oneplus.keyguardwallpaper.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1081
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intents":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 632
    if-eqz p1, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 635
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v2, :cond_0

    .line 636
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->onSaveNightModeSeekBarVale(I)V

    .line 673
    :cond_1
    return-void

    .line 639
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_3

    .line 641
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v3, :cond_0

    .line 642
    iput v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_4

    .line 647
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v4, :cond_0

    .line 648
    iput v4, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 651
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_5

    .line 653
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v5, :cond_0

    .line 654
    iput v5, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 655
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 657
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_6

    .line 659
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v6, :cond_0

    .line 660
    iput v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 661
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 663
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 665
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 666
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 667
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 901
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 902
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 904
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    .line 905
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_acc_backgap_theme"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 909
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "night_mode_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 913
    return-void

    :cond_1
    move v0, v1

    .line 908
    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 677
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 722
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 883
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 890
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 893
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 894
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f0c05ce

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

    .line 897
    return-void

    .line 884
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveBrightnessDataBase(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 1474
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_0

    .line 1475
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$6;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1519
    :goto_0
    return-void

    .line 1493
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v1, :cond_1

    .line 1494
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$7;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1508
    :cond_1
    int-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 1509
    .local v0, "adj":F
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/DisplaySettings$8;-><init>(Lcom/android/settings_ex/DisplaySettings;F)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1057
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
