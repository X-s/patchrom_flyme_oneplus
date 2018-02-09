.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DisplaySettings$1;,
        Lcom/android/settings_ex/DisplaySettings$2;,
        Lcom/android/settings_ex/DisplaySettings$3;,
        Lcom/android/settings_ex/DisplaySettings$4;,
        Lcom/android/settings_ex/DisplaySettings$5;,
        Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;,
        Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;,
        Lcom/android/settings_ex/DisplaySettings$DefaultHandler;,
        Lcom/android/settings_ex/DisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 100.0f

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final FILE_FONT_WARING:Ljava/lang/String; = "font_waring"

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

.field private static final KEY_HAND_UP_PROXIMITY:Ljava/lang/String; = "oneplus_hand_up_proximity"

.field public static final KEY_IS_CHECKED:Ljava/lang/String; = "is_checked"

.field private static final KEY_LAST_COLOR:Ljava/lang/String; = "last_color"

.field private static final KEY_LED_SETTINGS:Ljava/lang/String; = "led_settings"

.field private static final KEY_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field private static final KEY_LOCKGUARD_WALLPAPER:Ljava/lang/String; = "lockguard_wallpaper_settings"

.field private static final KEY_MANUAL_BRIGHT:Ljava/lang/String; = "manual_brightness_displays"

.field private static final KEY_MSM_SCREEN_BETTER:Ljava/lang/String; = "msm_screen_better_settings"

.field private static final KEY_NETWORK_NAME_DISPLAYED:Ljava/lang/String; = "network_operator_display"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final KEY_NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled_op"

.field private static final KEY_NIGHT_MODE_LEVEL:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_PROX_WAKE:Ljava/lang/String; = "oneplus_proximity_wake"

.field private static final KEY_READING_MODE:Ljava/lang/String; = "oneplus_reading_mode"

.field private static final KEY_SCREEN_BETTER:Ljava/lang/String; = "screen_better_settings"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_COLOR_MODE:Ljava/lang/String; = "screen_color_mode"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_TAP_TO_WAKE:Ljava/lang/String; = "tap_to_wake"

.field private static final KEY_THEME_ACCENT_COLOR:Ljava/lang/String; = "theme_accent_color"

.field private static final KEY_THEME_MODE:Ljava/lang/String; = "op_theme_mode"

.field private static final KEY_VR_DISPLAY_PREF:Ljava/lang/String; = "vr_display_pref"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final MAX_COLOR_COUNT:I = 0x7

.field public static final MSG_THEME_MODE_CHANGE:I = 0x64

.field public static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_black_mode_accent_color"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_black_mode_accent_color_index"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_white_mode_accent_color"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_white_mode_accent_color_index"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final OXYGEN_THEME_INTENT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme"

.field private static final OXYGEN_THEME_INTENT_EXTRA:Ljava/lang/String; = "oxygen_theme_status"

.field public static final PROX_WAKE_ENABLED:Ljava/lang/String; = "prox_wake_enabled"

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "customization_settings"

.field private static final SHOW_NETWORK_NAME_MODE:Ljava/lang/String; = "show_network_name_mode"

.field private static final SHOW_NETWORK_NAME_OFF:I = 0x0

.field private static final SHOW_NETWORK_NAME_ON:I = 0x1

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"

.field private static final THEME_ANDROID_MODE:I = 0x2

.field private static final THEME_DARK_MODE:I = 0x1

.field private static final THEME_LIGHT_MODE:I = 0x0

.field private static final THEME_MODE_ACTION:Ljava/lang/String; = "android.settings.OEM_THEME_MODE"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final sDCI_P3Path:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/DCI_P3"

.field private static final sOPEN_VALUE:Ljava/lang/String; = "mode = 1"

.field private static final sRGBPath:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/SRGB"


# instance fields
.field private isAutoSwitchClickedDrivenBrightnessChange:Z

.field private mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mBlackColorStringIds:[I

.field private mBlackColors:[Ljava/lang/String;

.field private mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mColors:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurentValue:I

.field private mDarkModeEnable:I

.field private mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

.field private mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

.field private mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

.field private mDefaultThemeMode:I

.field private mDozePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mExternalChange:Z

.field private mFontSizePref:Landroid/support/v7/preference/Preference;

.field private mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLedSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mMsmScreenPreference:Landroid/support/v7/preference/Preference;

.field private mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNewController:Z

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeHandler:Landroid/os/Handler;

.field private mNightModeLevel:I

.field private mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

.field private mNightModeObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/support/v7/preference/ListPreference;

.field private mOnePlusNightModePreference:Landroid/support/v7/preference/Preference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mPower:Landroid/os/IPowerManager;

.field private mPreValue:I

.field private mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mReadingModePreference:Landroid/support/v7/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mScreenColorModePreference:Landroid/support/v7/preference/Preference;

.field private mScreenPreference:Landroid/support/v7/preference/Preference;

.field private mScreenSaverPreference:Landroid/support/v7/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

.field private mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mThemeModePreference:Landroid/support/v7/preference/ListPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mWhiteColorStringIds:[I

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/DisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/DisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/DisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings_ex/DisplaySettings;J)V
    .locals 1
    .param p1, "currentTimeout"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateAutoSwitchDrivenSlider()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateMode()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1764
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$4;-><init>()V

    .line 1763
    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1773
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$5;-><init>()V

    .line 1772
    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 195
    iput-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    .line 204
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultThemeMode:I

    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1325
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    .line 1349
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$2;

    .line 1350
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1349
    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 1471
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 1505
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$3;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1651
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1652
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 100
    return-void
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 585
    const v1, 0x1120038

    .line 584
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1726
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/RestrictedPreference;

    .line 1727
    .local v0, "pref":Lcom/android/settings_exlib/RestrictedPreference;
    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1729
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1730
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1729
    invoke-static {v1, p2, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1731
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings_exlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getColorIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1371
    const/4 v1, 0x0

    .line 1372
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1374
    .local v0, "dbValue":I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x7

    .line 1378
    .end local v0    # "dbValue":I
    :goto_0
    return v1

    .line 1374
    .restart local v0    # "dbValue":I
    :cond_0
    move v1, v0

    goto :goto_0

    .line 1376
    .end local v0    # "dbValue":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_white_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "customization_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getThemeModeValue(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1128
    if-ne p1, v2, :cond_0

    .line 1129
    return v0

    .line 1130
    :cond_0
    if-nez p1, :cond_1

    .line 1131
    return v1

    .line 1132
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1133
    return v2

    .line 1135
    :cond_2
    return p1
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 1522
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1524
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1521
    return-void

    .line 1524
    :cond_0
    const/4 v1, 0x1

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

    .line 1426
    new-array v0, v3, [Ljava/lang/String;

    .line 1427
    const v1, 0x7f0b035a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1428
    const v1, 0x7f0b035b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1429
    const v1, 0x7f0b035c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1430
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1431
    const v1, 0x7f0b035e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1432
    const v1, 0x7f0b035f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1433
    const v1, 0x7f0b0360

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1434
    const v1, 0x7f0b0361

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1426
    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    .line 1436
    new-array v0, v3, [Ljava/lang/String;

    .line 1437
    const v1, 0x7f0b0362

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1438
    const v1, 0x7f0b0363

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1439
    const v1, 0x7f0b0364

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1440
    const v1, 0x7f0b0365

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1441
    const v1, 0x7f0b0366

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1442
    const v1, 0x7f0b0367

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1443
    const v1, 0x7f0b0368

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1444
    const v1, 0x7f0b0369

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1436
    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    .line 1446
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    .line 1451
    :cond_0
    :goto_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    .line 1460
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    .line 1425
    return-void

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    goto :goto_0

    .line 1451
    :array_0
    .array-data 4
        0x7f0e03e3
        0x7f0e03e4
        0x7f0e03e5
        0x7f0e03e6
        0x7f0e03e7
        0x7f0e03e8
        0x7f0e03e9
        0x7f0e03ea
    .end array-data

    .line 1460
    :array_1
    .array-data 4
        0x7f0e03eb
        0x7f0e03ec
        0x7f0e03ed
        0x7f0e03ee
        0x7f0e03ef
        0x7f0e03f0
        0x7f0e03f1
        0x7f0e03f2
    .end array-data
.end method

.method private isAccentColorPreferenceEnabled()Z
    .locals 1

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 607
    const v0, 0x1120024

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 619
    const v0, 0x11200ae

    .line 618
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 612
    const v3, 0x10e00a4

    .line 611
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 612
    const/4 v4, -0x1

    .line 611
    if-eq v3, v4, :cond_1

    move v0, v2

    .line 613
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 614
    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    :cond_0
    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_1
    move v0, v1

    .line 611
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_2
    move v1, v2

    .line 614
    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 594
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 597
    const v2, 0x104005b

    .line 596
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 594
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 599
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 589
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 590
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isProxWakeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1345
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1346
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 603
    const v0, 0x11200a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 624
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private killSelf()V
    .locals 2

    .prologue
    .line 1499
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v0, "home":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 1502
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->finish()V

    .line 1498
    return-void
.end method

.method private onSaveNightModeSeekBarVale(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1322
    const-string/jumbo v1, "oem_nightmode_progress_status"

    .line 1320
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1319
    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 882
    const-string/jumbo v3, "0"

    .line 883
    .local v3, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 885
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 890
    if-eqz v2, :cond_0

    .line 892
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 898
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 893
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 887
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 888
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 890
    if-eqz v1, :cond_1

    .line 892
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 893
    :catch_2
    move-exception v0

    .line 894
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 889
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 890
    :goto_3
    if-eqz v1, :cond_2

    .line 892
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 889
    :cond_2
    :goto_4
    throw v4

    .line 893
    :catch_3
    move-exception v0

    .line 894
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 889
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 887
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

.method private resetDefinedScreenColorModeValue()V
    .locals 5

    .prologue
    .line 1409
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 1410
    const/16 v3, 0x2b

    const/4 v4, -0x2

    .line 1408
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1411
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 1413
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 1407
    :cond_0
    return-void
.end method

.method private saveColorInfo(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x7

    .line 1384
    .local v0, "tempIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1386
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1381
    .end local v0    # "tempIndex":I
    :goto_1
    return-void

    .line 1383
    :cond_0
    move v0, p1

    .restart local v0    # "tempIndex":I
    goto :goto_0

    .line 1388
    .end local v0    # "tempIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private sendTheme(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fromThemeSwitch"    # Z

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1399
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DisplaySettings;->saveColorInfo(I)V

    .line 1401
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.OEM_COLOR_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oem_color_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1403
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1404
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1394
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 1599
    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 1600
    const/4 p1, 0x2

    .line 1603
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    :goto_0
    return-void

    .line 1604
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 1610
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    :goto_0
    return-void

    .line 1611
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1639
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_1

    .line 1642
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1643
    .local v0, "value":I
    const-string/jumbo v1, "display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value from database is when closing switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1645
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1637
    .end local v0    # "value":I
    :goto_0
    return-void

    .line 1640
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 1709
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1715
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1716
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

    .line 1708
    return-void
.end method

.method private updateDozeMode(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const v1, 0x7f0e032e

    .line 1140
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const v0, 0x7f0e048d

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const v1, 0x7f0e03cc

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1139
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1142
    goto :goto_0
.end method

.method private updateFontSizeSummary()V
    .locals 9

    .prologue
    .line 932
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 933
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 934
    const-string/jumbo v7, "font_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    .line 933
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 935
    .local v1, "currentScale":F
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 936
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0a0033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "entries":[Ljava/lang/String;
    const v6, 0x7f0a0034

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, "strEntryValues":[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings_ex/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    .line 940
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 931
    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 1515
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1516
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1517
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1513
    :cond_0
    return-void

    .line 1517
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1620
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMode mAutomaticAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1622
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1624
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    .line 1625
    const/4 v4, -0x2

    .line 1624
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1626
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1627
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1618
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1531
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1532
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_charging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1528
    return-void
.end method

.method private updateScreenColorModePreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 910
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 909
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 911
    .local v0, "value":I
    if-ne v4, v0, :cond_1

    .line 912
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 914
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 915
    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    .line 916
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 917
    :cond_3
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 918
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 927
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 926
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 924
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1656
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v2, :cond_1

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1669
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_3

    .line 1670
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1671
    return-void

    .line 1659
    .end local v1    # "value":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 1660
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1661
    return-void

    .line 1664
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1654
    :goto_0
    return-void

    .line 1678
    .restart local v1    # "value":I
    :cond_3
    const/4 v0, 0x0

    .line 1679
    .local v0, "isOK":Z
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    if-nez v2, :cond_4

    .line 1680
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1681
    const/4 v0, 0x1

    .line 1684
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-nez v2, :cond_5

    .line 1685
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1686
    const/4 v0, 0x1

    .line 1689
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1691
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_6

    if-nez v0, :cond_6

    .line 1692
    const-string/jumbo v2, "display"

    const-string/jumbo v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    return-void

    .line 1696
    :cond_6
    const-string/jumbo v2, "display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSlider (mMaximumBacklight - mMinimumBacklight) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1701
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1703
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 13

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateFontSizeSummary()V

    .line 739
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "oem_acc_breath_light"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 743
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_0

    .line 744
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    iget v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_12

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 749
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_1

    .line 750
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 751
    const-string/jumbo v10, "screen_brightness_mode"

    const/4 v11, 0x0

    .line 750
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 752
    .local v2, "brightnessMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_13

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 755
    .end local v2    # "brightnessMode":I
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_2

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 757
    const-string/jumbo v10, "show_network_name_mode"

    const/4 v11, 0x1

    .line 756
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 758
    .local v7, "showNetworkNameMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_14

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 762
    .end local v7    # "showNetworkNameMode":I
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_3

    .line 763
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wake_gesture_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 764
    .local v8, "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_15

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 768
    .end local v8    # "value":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_4

    .line 769
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "doze_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 770
    .restart local v8    # "value":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    const/4 v3, 0x1

    .line 771
    .local v3, "dozeChecked":Z
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 772
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 777
    .end local v3    # "dozeChecked":Z
    .end local v8    # "value":I
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_5

    .line 778
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "prox_wake_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 779
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_17

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 781
    .end local v8    # "value":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_6

    .line 782
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "prox_wake_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 783
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_18

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 788
    .end local v8    # "value":I
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_7

    .line 789
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tap_to_wake"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 790
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_19

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 794
    .end local v8    # "value":I
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_8

    .line 795
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_gesture_disabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 796
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_1a

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 800
    .end local v8    # "value":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_9

    .line 802
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_double_tap_power_gesture_disabled"

    const/4 v11, 0x0

    .line 801
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 803
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_1b

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 806
    .end local v8    # "value":I
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v9, :cond_b

    .line 808
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 809
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getColorIndex()I

    move-result v4

    .line 810
    .local v4, "lastColor":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 812
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 816
    :goto_a
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setEnabled(Z)V

    .line 817
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "oem.op_dark_mode.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 819
    :cond_a
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 825
    .end local v4    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_mode_enabled"

    const/4 v11, 0x0

    .line 824
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v5, 0x1

    .line 826
    .local v5, "opNightModeEnabled":Z
    :goto_b
    const-string/jumbo v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resetNightAndSaturationMode--opNightModeEnabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_c

    .line 828
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 830
    :cond_c
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_d

    .line 831
    if-eqz v5, :cond_1e

    .line 832
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 833
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 834
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 842
    :cond_d
    :goto_c
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_e

    .line 843
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v9, :cond_e

    .line 844
    if-eqz v5, :cond_1f

    .line 845
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 846
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 847
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 854
    :cond_e
    :goto_d
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_f

    .line 855
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 857
    :cond_f
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_10

    .line 858
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 861
    :cond_10
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_11

    .line 862
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_display_activated"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_20

    const/4 v0, 0x1

    .line 863
    .local v0, "OPNightModeState":Z
    :goto_e
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "reading_mode_status"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_21

    const/4 v1, 0x1

    .line 864
    .local v1, "OPReadingModeState":Z
    :goto_f
    if-eqz v0, :cond_22

    .line 865
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 866
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 737
    .end local v0    # "OPNightModeState":Z
    .end local v1    # "OPReadingModeState":Z
    :cond_11
    :goto_10
    return-void

    .line 744
    .end local v5    # "opNightModeEnabled":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 752
    .restart local v2    # "brightnessMode":I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 758
    .end local v2    # "brightnessMode":I
    .restart local v7    # "showNetworkNameMode":I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 764
    .end local v7    # "showNetworkNameMode":I
    .restart local v8    # "value":I
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 770
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "dozeChecked":Z
    goto/16 :goto_4

    .line 779
    .end local v3    # "dozeChecked":Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 783
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 790
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 796
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 803
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 814
    .end local v8    # "value":I
    .restart local v4    # "lastColor":I
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1c
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b035a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 824
    .end local v4    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "opNightModeEnabled":Z
    goto/16 :goto_b

    .line 836
    :cond_1e
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 837
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    .line 838
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 849
    :cond_1f
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 850
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_d

    .line 862
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "OPNightModeState":Z
    goto/16 :goto_e

    .line 863
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "OPReadingModeState":Z
    goto :goto_f

    .line 868
    :cond_22
    if-eqz v1, :cond_23

    .line 869
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 870
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 872
    :cond_23
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    .line 873
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_10
.end method

.method private updateThemeModePreferenceDescription(I)V
    .locals 3
    .param p1, "themeMode"    # I

    .prologue
    .line 1338
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1340
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1337
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    const/4 v11, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    .line 632
    return-void

    .line 635
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    .line 637
    .local v3, "preference":Lcom/android/settings_ex/TimeoutListPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 638
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0fbc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 627
    return-void

    .line 639
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_2

    .line 641
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 643
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 644
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 645
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    .line 646
    :cond_3
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 648
    .end local v4    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 649
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_6

    .line 650
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 651
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_5

    .line 652
    move v0, v2

    .line 649
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    .end local v6    # "timeout":J
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v1, v0

    aput-object v10, v9, v11

    const v10, 0x7f0e080a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1722
    const v0, 0x7f0e0d6a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 282
    .local v8, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    .line 283
    new-instance v11, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    .line 284
    new-instance v11, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v12, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v11, v12}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 285
    const v11, 0x7f08002c

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 286
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 287
    .local v7, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v7}, Lcom/android/settings_ex/DisplaySettings;->initAccentColors(Landroid/content/res/Resources;)V

    .line 288
    const-string/jumbo v11, "screen_brightness"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 289
    const-string/jumbo v11, "display_system"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 291
    const-string/jumbo v11, "screensaver"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 292
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v11, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 294
    const v12, 0x112006e

    .line 293
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 298
    :cond_0
    const-string/jumbo v11, "screen_timeout"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings_ex/TimeoutListPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    .line 300
    const-string/jumbo v11, "font_size"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 303
    const-string/jumbo v11, "auto_brightness"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 304
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 310
    const v12, 0x11200cc

    .line 309
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 320
    .local v4, "enableOperatorName":Z
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 321
    const-string/jumbo v11, "network_operator_display"

    .line 320
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 323
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 324
    const-string/jumbo v11, "lift_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 325
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 330
    :goto_1
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 331
    const-string/jumbo v11, "doze"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 332
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    :goto_2
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isProxWakeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 339
    const-string/jumbo v11, "oneplus_proximity_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 340
    const-string/jumbo v11, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 341
    sget-object v11, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string/jumbo v12, "oem.lift_up_display.support"

    invoke-static {v11, v12}, Lcom/oneplus/settings/utils/OPUtils;->isFeatureSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 342
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "oneplus_proximity_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 343
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    :goto_3
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 418
    const-string/jumbo v11, "vr_display_pref"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/DropDownPreference;

    .line 419
    .local v10, "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    .line 420
    const v12, 0x7f0e0e61

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 421
    const v12, 0x7f0e0e62

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 419
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 423
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const-string/jumbo v12, "0"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "1"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 425
    move-object v1, v0

    .line 426
    .local v1, "c":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 427
    .local v3, "currentUser":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 428
    const-string/jumbo v12, "vr_display_mode"

    .line 429
    const/4 v13, 0x0

    .line 427
    invoke-static {v11, v12, v13, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 431
    .local v2, "current":I
    invoke-virtual {v10, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    .line 432
    new-instance v11, Lcom/android/settings_ex/DisplaySettings$6;

    invoke-direct {v11, p0, v0}, Lcom/android/settings_ex/DisplaySettings$6;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 460
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "current":I
    .end local v3    # "currentUser":I
    .end local v10    # "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    :goto_4
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 461
    const-string/jumbo v11, "dark_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    .line 462
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "oem_black_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    .line 464
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    iget v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    if-nez v11, :cond_13

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v12, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 465
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 467
    const-string/jumbo v11, "op_theme_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "oem_black_mode"

    iget v13, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultThemeMode:I

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 469
    .local v9, "themeMode":I
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    invoke-direct {p0, v9}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "oem.op_dark_mode.support"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 473
    :cond_1
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 477
    :cond_2
    const-string/jumbo v11, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 478
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 479
    const-string/jumbo v11, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 482
    :cond_3
    const-string/jumbo v11, "back_topic_theme"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 483
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 484
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v11, :cond_4

    .line 486
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 492
    :cond_4
    const-string/jumbo v11, "msm_screen_better_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    .line 493
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "oem_acc_breath_light"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 495
    const-string/jumbo v11, "notify_light_enable"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 496
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 497
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    if-nez v11, :cond_14

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v12, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 499
    const-string/jumbo v11, "lockguard_wallpaper_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    .line 500
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 502
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 505
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v13, "camera_gesture"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 506
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v13, "lift_to_wake"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 507
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v13, "tap_to_wake"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 509
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v13, "auto_rotate"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 512
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    .line 513
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v11

    iput v11, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1120024

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    .line 515
    const-string/jumbo v11, "power"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 517
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 518
    const-string/jumbo v12, "oem.autobrightctl.animation.support"

    .line 517
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    .line 520
    const-string/jumbo v11, "manual_brightness_displays"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 521
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v11, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 522
    new-instance v11, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v11, p0, v12}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    .line 523
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v11}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 525
    const-string/jumbo v11, "theme_accent_color"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 526
    const-string/jumbo v11, "led_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 527
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 528
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    invoke-virtual {v11, v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 529
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v12, 0x7f0b035a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 537
    :goto_7
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v12, 0x7f0e01d7

    invoke-virtual {v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 538
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 539
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 540
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 542
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 544
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 546
    :cond_5
    const-string/jumbo v11, "night_mode_enabled_op"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 547
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v11, :cond_6

    .line 548
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 550
    :cond_6
    const-string/jumbo v11, "night_mode_level_op"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    .line 551
    const-string/jumbo v11, "screen_color_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    .line 552
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v11, :cond_7

    .line 553
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v11, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V

    .line 558
    :cond_7
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v11, :cond_8

    .line 559
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "wallpaper"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 561
    :cond_8
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "oem.read_mode.support"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 562
    .local v5, "isSupportReadingMode":Z
    const-string/jumbo v11, "oneplus_reading_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    .line 563
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v11, :cond_9

    if-eqz v5, :cond_17

    .line 569
    :cond_9
    :goto_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v11, :cond_c

    .line 570
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v11, :cond_a

    .line 571
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 573
    :cond_a
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v11, :cond_b

    .line 574
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 576
    :cond_b
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v11, :cond_c

    .line 577
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 277
    :cond_c
    const-string/jumbo v11, "oneplus_night_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mOnePlusNightModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mOnePlusNightModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    .line 306
    .end local v4    # "enableOperatorName":Z
    .end local v5    # "isSupportReadingMode":Z
    .end local v6    # "pm":Landroid/os/PowerManager;
    .end local v9    # "themeMode":I
    :cond_d
    const-string/jumbo v11, "auto_brightness"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    .restart local v4    # "enableOperatorName":Z
    :cond_e
    const-string/jumbo v11, "lift_to_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 334
    :cond_f
    const-string/jumbo v11, "doze"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 345
    :cond_10
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 346
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 349
    :cond_11
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "oneplus_proximity_wake"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 350
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 447
    :cond_12
    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "vr_display_pref"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 464
    :cond_13
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 497
    .restart local v9    # "themeMode":I
    :cond_14
    const/4 v11, 0x1

    goto/16 :goto_6

    .line 530
    .restart local v6    # "pm":Landroid/os/PowerManager;
    :cond_15
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 531
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    invoke-virtual {v11, v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 532
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v12, 0x7f0b0362

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 534
    :cond_16
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v12, 0x7f0b035a

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 564
    .restart local v5    # "isSupportReadingMode":Z
    :cond_17
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 730
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->stopObserving()V

    .line 729
    :cond_0
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 4
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v2, 0xff

    .line 1166
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    .line 1179
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v3, :cond_1

    .line 1180
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1181
    .local v1, "val":I
    if-le v1, v2, :cond_0

    move v1, v2

    .line 1182
    :cond_0
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    .line 1183
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    .line 1165
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v3, :cond_3

    .line 1186
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1187
    .restart local v1    # "val":I
    if-le v1, v2, :cond_2

    move v1, v2

    .line 1188
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    goto :goto_0

    .line 1190
    .end local v1    # "val":I
    :cond_3
    int-to-float v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 1191
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 708
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 710
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 706
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 946
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v14, "screen_timeout"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 948
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 949
    .local v12, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "screen_off_timeout"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 950
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v12    # "value":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    move-object/from16 v14, p2

    .line 956
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 957
    .local v2, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "screen_brightness_mode"

    .line 958
    if-eqz v2, :cond_c

    const/4 v14, 0x1

    .line 957
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 960
    .end local v2    # "auto":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    move-object/from16 v14, p2

    .line 961
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 962
    .local v6, "isShow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "show_network_name_mode"

    .line 963
    if-eqz v6, :cond_d

    const/4 v14, 0x1

    .line 962
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 965
    .end local v6    # "isShow":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    move-object/from16 v14, p2

    .line 966
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 967
    .local v13, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wake_gesture_enabled"

    if-eqz v13, :cond_e

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 969
    .end local v13    # "value":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    move-object/from16 v14, p2

    .line 970
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 971
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "doze_enabled"

    if-eqz v13, :cond_f

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 976
    .end local v13    # "value":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    move-object/from16 v14, p2

    .line 977
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 978
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "prox_wake_enabled"

    if-eqz v13, :cond_10

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 980
    .end local v13    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v14, p2

    .line 981
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 982
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "prox_wake_enabled"

    if-eqz v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 986
    .end local v13    # "value":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_7

    move-object/from16 v14, p2

    .line 987
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 988
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "double_tap_to_wake"

    if-eqz v13, :cond_12

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 990
    .end local v13    # "value":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_8

    move-object/from16 v14, p2

    .line 991
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 992
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_gesture_disabled"

    .line 993
    if-eqz v13, :cond_13

    const/4 v14, 0x0

    .line 992
    :goto_8
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 995
    .end local v13    # "value":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_9

    move-object/from16 v14, p2

    .line 996
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 997
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_double_tap_power_gesture_disabled"

    .line 998
    if-eqz v13, :cond_14

    const/4 v14, 0x0

    .line 997
    :goto_9
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    .end local v13    # "value":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    .line 1002
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1004
    .restart local v12    # "value":I
    const-string/jumbo v14, "uimode"

    .line 1003
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    .line 1005
    .local v11, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v11, v12}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    .end local v11    # "uiManager":Landroid/app/UiModeManager;
    .end local v12    # "value":I
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_15

    .line 1012
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1013
    .restart local v13    # "value":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    if-nez v14, :cond_b

    .line 1014
    new-instance v14, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 1016
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v13}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->setValue(Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1019
    const/4 v14, 0x1

    return v14

    .line 951
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 952
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 958
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 963
    .end local v2    # "auto":Z
    .restart local v6    # "isShow":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 967
    .end local v6    # "isShow":Z
    .restart local v13    # "value":Z
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 971
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 978
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 982
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 988
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 993
    :cond_13
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 998
    :cond_14
    const/4 v14, 0x1

    goto/16 :goto_9

    .line 1006
    .end local v13    # "value":Z
    :catch_1
    move-exception v3

    .line 1007
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist night mode setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1021
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_18

    .line 1022
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1023
    .restart local v13    # "value":Z
    if-eqz v13, :cond_17

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->updateNotifyLightStatus(I)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_16

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1027
    :cond_16
    const/4 v14, 0x1

    return v14

    .line 1023
    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    .line 1029
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_18
    const-string/jumbo v14, "theme_accent_color"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v10, p2

    .line 1030
    check-cast v10, Ljava/lang/String;

    .line 1031
    .local v10, "theme":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 1032
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    .line 1056
    .end local v10    # "theme":Ljava/lang/String;
    :cond_19
    :goto_c
    const-string/jumbo v14, "op_theme_mode"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1058
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1059
    .restart local v12    # "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1061
    const-string/jumbo v14, "op_theme_mode"

    invoke-static {v14, v12}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1063
    .local v8, "msg":Landroid/os/Message;
    iput v12, v8, Landroid/os/Message;->arg1:I

    .line 1064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1065
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1070
    .end local v8    # "msg":Landroid/os/Message;
    .end local v12    # "value":I
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1d

    .line 1071
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1073
    .local v4, "enabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "night_mode_enabled"

    if-eqz v4, :cond_23

    const/4 v14, 0x1

    .line 1072
    :goto_e
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1075
    const-string/jumbo v15, "oem_nightmode_progress_status"

    const/16 v16, 0x190

    .line 1074
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1076
    .local v9, "progress":I
    if-eqz v4, :cond_29

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_1b

    .line 1078
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e026f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1082
    :cond_1b
    if-ltz v9, :cond_24

    const/16 v14, 0x64

    if-ge v9, v14, :cond_24

    .line 1083
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1095
    :cond_1c
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1115
    .end local v4    # "enabled":Z
    .end local v9    # "progress":I
    :cond_1d
    :goto_10
    const/4 v14, 0x1

    return v14

    .line 1034
    .restart local v10    # "theme":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 1035
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_19

    .line 1036
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1037
    if-nez v5, :cond_1f

    .line 1038
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1040
    :cond_1f
    add-int/lit8 v14, v5, 0x7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1035
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1045
    .end local v5    # "i":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1046
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_19

    .line 1047
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1048
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1046
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1066
    .end local v5    # "i":I
    .end local v10    # "theme":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1067
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 1073
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v4    # "enabled":Z
    :cond_23
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1084
    .restart local v9    # "progress":I
    :cond_24
    const/16 v14, 0x64

    if-lt v9, v14, :cond_25

    const/16 v14, 0xc7

    if-gt v9, v14, :cond_25

    .line 1085
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1086
    :cond_25
    const/16 v14, 0xc8

    if-lt v9, v14, :cond_26

    const/16 v14, 0x12b

    if-gt v9, v14, :cond_26

    .line 1087
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1088
    :cond_26
    const/16 v14, 0x12c

    if-lt v9, v14, :cond_27

    const/16 v14, 0x18f

    if-gt v9, v14, :cond_27

    .line 1089
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1090
    :cond_27
    const/16 v14, 0x190

    if-lt v9, v14, :cond_28

    const/16 v14, 0x1f3

    if-gt v9, v14, :cond_28

    .line 1091
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1092
    :cond_28
    const/16 v14, 0x1f4

    if-lt v9, v14, :cond_1c

    const/16 v14, 0x258

    if-gt v9, v14, :cond_1c

    .line 1093
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1097
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_1d

    .line 1098
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1100
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    goto/16 :goto_10
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1154
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msm_screen_better_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1155
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1156
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings_ex"

    const-string/jumbo v3, "com.android.settings_ex.OPScreenBetterActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1159
    const/4 v2, 0x1

    return v2

    .line 1161
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intents":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 1122
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 1124
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
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

    .line 1268
    if-eqz p1, :cond_1

    .line 1270
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1271
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v2, :cond_0

    .line 1272
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1273
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->onSaveNightModeSeekBarVale(I)V

    .line 1267
    :cond_1
    return-void

    .line 1275
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 1276
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_3

    .line 1277
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v3, :cond_0

    .line 1278
    iput v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1279
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1281
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    .line 1282
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_4

    .line 1283
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v4, :cond_0

    .line 1284
    iput v4, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1285
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1287
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    .line 1288
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_5

    .line 1289
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v5, :cond_0

    .line 1290
    iput v5, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1291
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1293
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_6

    .line 1294
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_6

    .line 1295
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v6, :cond_0

    .line 1296
    iput v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1297
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1299
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 1300
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 1301
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1302
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1303
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 676
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 677
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 680
    const-string/jumbo v8, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    .line 679
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 681
    .local v2, "currentTimeout":J
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 682
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 684
    const-string/jumbo v8, "device_policy"

    .line 683
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 685
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 686
    invoke-static {v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 689
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 688
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    .line 690
    .local v4, "maxTimeout":J
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v7, v4, v5, v0}, Lcom/android/settings_ex/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 692
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v4    # "maxTimeout":J
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 694
    const-string/jumbo v7, "wallpaper"

    const-string/jumbo v8, "no_set_wallpaper"

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v7, v8}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 701
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "oem_acc_backgap_theme"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 675
    return-void

    .line 701
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 663
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 665
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 667
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 668
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 665
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 669
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 662
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1312
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 721
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 723
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 720
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1316
    return-void
.end method

.method public saveBrightnessDataBase(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 1216
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_0

    .line 1217
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$7;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1198
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v1, :cond_1

    .line 1237
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$8;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1251
    :cond_1
    int-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 1252
    .local v0, "adj":F
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/DisplaySettings$9;-><init>(Lcom/android/settings_ex/DisplaySettings;F)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
