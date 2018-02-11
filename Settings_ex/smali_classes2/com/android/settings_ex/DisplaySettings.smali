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

.field private static final SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS_VALUE:I = 0x5

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field private static final SCREEN_COLOR_MODE_SOFT_SETTINGS_VALUE:I = 0x6

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

.field private static isSupportReadingMode:Z = false

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
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings_ex/DisplaySettings;->isSupportReadingMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/DisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/DisplaySettings;)Landroid/support/v7/preference/Preference;
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
    .line 1777
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$4;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$4;-><init>()V

    .line 1776
    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1786
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$5;-><init>()V

    .line 1785
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

    .line 1338
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    .line 1362
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$2;

    .line 1363
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1362
    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 1484
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 1518
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$3;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1664
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1665
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 100
    return-void
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 587
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 588
    const v1, 0x1120038

    .line 587
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

    .line 1739
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/RestrictedPreference;

    .line 1740
    .local v0, "pref":Lcom/android/settings_exlib/RestrictedPreference;
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1743
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1742
    invoke-static {v1, p2, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1744
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settings_exlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getColorIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1384
    const/4 v1, 0x0

    .line 1385
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1387
    .local v0, "dbValue":I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x7

    .line 1391
    .end local v0    # "dbValue":I
    :goto_0
    return v1

    .line 1387
    .restart local v0    # "dbValue":I
    :cond_0
    move v1, v0

    goto :goto_0

    .line 1389
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
    .line 1431
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

    .line 1135
    if-ne p1, v2, :cond_0

    .line 1136
    return v0

    .line 1137
    :cond_0
    if-nez p1, :cond_1

    .line 1138
    return v1

    .line 1139
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1140
    return v2

    .line 1142
    :cond_2
    return p1
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 1535
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1537
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1534
    return-void

    .line 1537
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

    .line 1439
    new-array v0, v3, [Ljava/lang/String;

    .line 1440
    const v1, 0x7f0b035a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1441
    const v1, 0x7f0b035b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1442
    const v1, 0x7f0b035c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1443
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1444
    const v1, 0x7f0b035e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1445
    const v1, 0x7f0b035f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1446
    const v1, 0x7f0b0360

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1447
    const v1, 0x7f0b0361

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1439
    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    .line 1449
    new-array v0, v3, [Ljava/lang/String;

    .line 1450
    const v1, 0x7f0b0362

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1451
    const v1, 0x7f0b0363

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1452
    const v1, 0x7f0b0364

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1453
    const v1, 0x7f0b0365

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1454
    const v1, 0x7f0b0366

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1455
    const v1, 0x7f0b0367

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1456
    const v1, 0x7f0b0368

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1457
    const v1, 0x7f0b0369

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1449
    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    .line 1459
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    .line 1464
    :cond_0
    :goto_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    .line 1473
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    .line 1438
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    goto :goto_0

    .line 1464
    :array_0
    .array-data 4
        0x7f0e0412
        0x7f0e0413
        0x7f0e0414
        0x7f0e0415
        0x7f0e0416
        0x7f0e0417
        0x7f0e0418
        0x7f0e0419
    .end array-data

    .line 1473
    :array_1
    .array-data 4
        0x7f0e041a
        0x7f0e041b
        0x7f0e041c
        0x7f0e041d
        0x7f0e041e
        0x7f0e041f
        0x7f0e0420
        0x7f0e0421
    .end array-data
.end method

.method private isAccentColorPreferenceEnabled()Z
    .locals 1

    .prologue
    .line 1435
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
    .line 610
    const v0, 0x1120024

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 622
    const v0, 0x11200ae

    .line 621
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

    .line 615
    const v3, 0x10e00a4

    .line 614
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 615
    const/4 v4, -0x1

    .line 614
    if-eq v3, v4, :cond_1

    move v0, v2

    .line 616
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 617
    const-string/jumbo v3, "gesture.disable_camera_launch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    :cond_0
    :goto_1
    return v1

    .end local v0    # "configSet":Z
    :cond_1
    move v0, v1

    .line 614
    goto :goto_0

    .restart local v0    # "configSet":Z
    :cond_2
    move v1, v2

    .line 617
    goto :goto_1
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 600
    const v2, 0x104005b

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 597
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 602
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

    .line 592
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 593
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

    .line 1358
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1359
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
    .line 606
    const v0, 0x11200a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 627
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private killSelf()V
    .locals 2

    .prologue
    .line 1512
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v0, "home":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 1515
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->finish()V

    .line 1511
    return-void
.end method

.method private onSaveNightModeSeekBarVale(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1335
    const-string/jumbo v1, "oem_nightmode_progress_status"

    .line 1333
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1332
    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 885
    const-string/jumbo v3, "0"

    .line 886
    .local v3, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 888
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 893
    if-eqz v2, :cond_0

    .line 895
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 901
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 896
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 890
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 891
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 893
    if-eqz v1, :cond_1

    .line 895
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 896
    :catch_2
    move-exception v0

    .line 897
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 892
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 893
    :goto_3
    if-eqz v1, :cond_2

    .line 895
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 892
    :cond_2
    :goto_4
    throw v4

    .line 896
    :catch_3
    move-exception v0

    .line 897
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 892
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 890
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
    .line 1422
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 1423
    const/16 v3, 0x2b

    const/4 v4, -0x2

    .line 1421
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1424
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 1426
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 1420
    :cond_0
    return-void
.end method

.method private saveColorInfo(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1395
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1396
    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x7

    .line 1397
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

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1394
    .end local v0    # "tempIndex":I
    :goto_1
    return-void

    .line 1396
    :cond_0
    move v0, p1

    .restart local v0    # "tempIndex":I
    goto :goto_0

    .line 1401
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

    .line 1403
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
    .line 1410
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1412
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DisplaySettings;->saveColorInfo(I)V

    .line 1414
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.OEM_COLOR_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oem_color_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1417
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1407
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 1612
    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 1613
    const/4 p1, 0x2

    .line 1616
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :goto_0
    return-void

    .line 1624
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1652
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_1

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1656
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

    .line 1657
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1658
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1650
    .end local v0    # "value":I
    :goto_0
    return-void

    .line 1653
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 1722
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1728
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1729
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

    .line 1721
    return-void
.end method

.method private updateDozeMode(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const v1, 0x7f0e032e

    .line 1147
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const v0, 0x7f0e04bc

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const v1, 0x7f0e03cc

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 1155
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1146
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1149
    goto :goto_0
.end method

.method private updateFontSizeSummary()V
    .locals 9

    .prologue
    .line 939
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 940
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 941
    const-string/jumbo v7, "font_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    .line 940
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 942
    .local v1, "currentScale":F
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 943
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0a0033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 944
    .local v2, "entries":[Ljava/lang/String;
    const v6, 0x7f0a0034

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 945
    .local v5, "strEntryValues":[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings_ex/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    .line 947
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 938
    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 1528
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1529
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1530
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1526
    :cond_0
    return-void

    .line 1530
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1633
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

    .line 1635
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1637
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    .line 1638
    const/4 v4, -0x2

    .line 1637
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1639
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1640
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1631
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1543
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1544
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1545
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_charging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1541
    return-void
.end method

.method private updateScreenColorModePreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 913
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 912
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 914
    .local v0, "value":I
    if-ne v4, v0, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 917
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 918
    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    .line 919
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e026e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 920
    :cond_3
    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    .line 921
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e04d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 922
    :cond_4
    const/4 v1, 0x5

    if-ne v1, v0, :cond_5

    .line 923
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e040b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 924
    :cond_5
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 925
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0411

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 934
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 933
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 931
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1669
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v2, :cond_1

    .line 1680
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1682
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_3

    .line 1683
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1684
    return-void

    .line 1672
    .end local v1    # "value":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 1673
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1674
    return-void

    .line 1677
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1667
    :goto_0
    return-void

    .line 1691
    .restart local v1    # "value":I
    :cond_3
    const/4 v0, 0x0

    .line 1692
    .local v0, "isOK":Z
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    if-nez v2, :cond_4

    .line 1693
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 1694
    const/4 v0, 0x1

    .line 1697
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-nez v2, :cond_5

    .line 1698
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1699
    const/4 v0, 0x1

    .line 1702
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 1704
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_6

    if-nez v0, :cond_6

    .line 1705
    const-string/jumbo v2, "display"

    const-string/jumbo v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return-void

    .line 1709
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

    .line 1710
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1714
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1716
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 13

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateFontSizeSummary()V

    .line 742
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "oem_acc_breath_light"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 746
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_0

    .line 747
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    iget v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_12

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 752
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 754
    const-string/jumbo v10, "screen_brightness_mode"

    const/4 v11, 0x0

    .line 753
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 755
    .local v2, "brightnessMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_13

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 758
    .end local v2    # "brightnessMode":I
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 760
    const-string/jumbo v10, "show_network_name_mode"

    const/4 v11, 0x1

    .line 759
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 761
    .local v7, "showNetworkNameMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_14

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 765
    .end local v7    # "showNetworkNameMode":I
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_3

    .line 766
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wake_gesture_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 767
    .local v8, "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_15

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 771
    .end local v8    # "value":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_4

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "doze_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 773
    .restart local v8    # "value":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    const/4 v3, 0x1

    .line 774
    .local v3, "dozeChecked":Z
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 775
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 780
    .end local v3    # "dozeChecked":Z
    .end local v8    # "value":I
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_5

    .line 781
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "prox_wake_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 782
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_17

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 784
    .end local v8    # "value":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_6

    .line 785
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "prox_wake_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 786
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_18

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 791
    .end local v8    # "value":I
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_7

    .line 792
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tap_to_wake"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 793
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_19

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 797
    .end local v8    # "value":I
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_8

    .line 798
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_gesture_disabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 799
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_1a

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 803
    .end local v8    # "value":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_9

    .line 805
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_double_tap_power_gesture_disabled"

    const/4 v11, 0x0

    .line 804
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 806
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_1b

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 809
    .end local v8    # "value":I
    :cond_9
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v9, :cond_b

    .line 811
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 812
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->getColorIndex()I

    move-result v4

    .line 813
    .local v4, "lastColor":I
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 814
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 815
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 819
    :goto_a
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setEnabled(Z)V

    .line 820
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 821
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

    .line 822
    :cond_a
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 828
    .end local v4    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_mode_enabled"

    const/4 v11, 0x0

    .line 827
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v5, 0x1

    .line 829
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

    .line 830
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_c

    .line 831
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 833
    :cond_c
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_d

    .line 834
    if-eqz v5, :cond_1e

    .line 835
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 836
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 837
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 845
    :cond_d
    :goto_c
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_e

    .line 846
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v9, :cond_e

    .line 847
    if-eqz v5, :cond_1f

    .line 848
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 849
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 850
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 857
    :cond_e
    :goto_d
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_f

    .line 858
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 860
    :cond_f
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_10

    .line 861
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 864
    :cond_10
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_11

    .line 865
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_display_activated"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_20

    const/4 v0, 0x1

    .line 866
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

    .line 867
    .local v1, "OPReadingModeState":Z
    :goto_f
    if-eqz v0, :cond_22

    .line 868
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 869
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e026f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 740
    .end local v0    # "OPNightModeState":Z
    .end local v1    # "OPReadingModeState":Z
    :cond_11
    :goto_10
    return-void

    .line 747
    .end local v5    # "opNightModeEnabled":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 755
    .restart local v2    # "brightnessMode":I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 761
    .end local v2    # "brightnessMode":I
    .restart local v7    # "showNetworkNameMode":I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 767
    .end local v7    # "showNetworkNameMode":I
    .restart local v8    # "value":I
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 773
    :cond_16
    const/4 v3, 0x0

    .restart local v3    # "dozeChecked":Z
    goto/16 :goto_4

    .line 782
    .end local v3    # "dozeChecked":Z
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 786
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 793
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 799
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 806
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 817
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

    .line 827
    .end local v4    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "opNightModeEnabled":Z
    goto/16 :goto_b

    .line 839
    :cond_1e
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 840
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    .line 841
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 852
    :cond_1f
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 853
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_d

    .line 865
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "OPNightModeState":Z
    goto/16 :goto_e

    .line 866
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "OPReadingModeState":Z
    goto :goto_f

    .line 871
    :cond_22
    if-eqz v1, :cond_23

    .line 872
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 873
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e03a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 875
    :cond_23
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    .line 876
    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_10
.end method

.method private updateThemeModePreferenceDescription(I)V
    .locals 3
    .param p1, "themeMode"    # I

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1353
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1350
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    const/4 v11, 0x0

    .line 634
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    .line 635
    return-void

    .line 638
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    .line 640
    .local v3, "preference":Lcom/android/settings_ex/TimeoutListPreference;
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 641
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0fea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 630
    return-void

    .line 642
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_2

    .line 644
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 646
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 647
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/settings_ex/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 648
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    .line 649
    :cond_3
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 651
    .end local v4    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 652
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_6

    .line 653
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 654
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_5

    .line 655
    move v0, v2

    .line 652
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 658
    .end local v6    # "timeout":J
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v1, v0

    aput-object v10, v9, v11

    const v10, 0x7f0e0838

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1735
    const v0, 0x7f0e0d98

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 285
    .local v7, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    .line 286
    new-instance v10, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    .line 287
    new-instance v10, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v11, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v11}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 288
    const v10, 0x7f08002c

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 289
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 290
    .local v6, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v6}, Lcom/android/settings_ex/DisplaySettings;->initAccentColors(Landroid/content/res/Resources;)V

    .line 291
    const-string/jumbo v10, "screen_brightness"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 292
    const-string/jumbo v10, "display_system"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 294
    const-string/jumbo v10, "screensaver"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 295
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v10, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 297
    const v11, 0x112006e

    .line 296
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 301
    :cond_0
    const-string/jumbo v10, "screen_timeout"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/TimeoutListPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    .line 303
    const-string/jumbo v10, "font_size"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 306
    const-string/jumbo v10, "auto_brightness"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 307
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 313
    const v11, 0x11200ca

    .line 312
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 323
    .local v4, "enableOperatorName":Z
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 324
    const-string/jumbo v10, "network_operator_display"

    .line 323
    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 326
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 327
    const-string/jumbo v10, "lift_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 328
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    :goto_1
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 334
    const-string/jumbo v10, "doze"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 335
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    :goto_2
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isProxWakeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 342
    const-string/jumbo v10, "oneplus_proximity_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 343
    const-string/jumbo v10, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 344
    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string/jumbo v11, "oem.lift_up_display.support"

    invoke-static {v10, v11}, Lcom/oneplus/settings/utils/OPUtils;->isFeatureSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 345
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "oneplus_proximity_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 346
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    :goto_3
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 421
    const-string/jumbo v10, "vr_display_pref"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/DropDownPreference;

    .line 422
    .local v9, "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    .line 423
    const v11, 0x7f0e0e8f

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 424
    const v11, 0x7f0e0e90

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 422
    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 426
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    const-string/jumbo v11, "0"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "1"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    move-object v1, v0

    .line 429
    .local v1, "c":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 430
    .local v3, "currentUser":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 431
    const-string/jumbo v11, "vr_display_mode"

    .line 432
    const/4 v12, 0x0

    .line 430
    invoke-static {v10, v11, v12, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 434
    .local v2, "current":I
    invoke-virtual {v9, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    .line 435
    new-instance v10, Lcom/android/settings_ex/DisplaySettings$6;

    invoke-direct {v10, p0, v0}, Lcom/android/settings_ex/DisplaySettings$6;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 463
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "current":I
    .end local v3    # "currentUser":I
    .end local v9    # "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    :goto_4
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 464
    const-string/jumbo v10, "dark_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    .line 465
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "oem_black_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    .line 467
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    iget v10, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeEnable:I

    if-nez v10, :cond_13

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 468
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 470
    const-string/jumbo v10, "op_theme_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/ListPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "oem_black_mode"

    iget v12, p0, Lcom/android/settings_ex/DisplaySettings;->mDefaultThemeMode:I

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 472
    .local v8, "themeMode":I
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 473
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 474
    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "oem.op_dark_mode.support"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 476
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 480
    :cond_2
    const-string/jumbo v10, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 481
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 482
    const-string/jumbo v10, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 485
    :cond_3
    const-string/jumbo v10, "back_topic_theme"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 486
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 487
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_4

    .line 489
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 495
    :cond_4
    const-string/jumbo v10, "msm_screen_better_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    .line 496
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "oem_acc_breath_light"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    .line 498
    const-string/jumbo v10, "notify_light_enable"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 499
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 500
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightEnable:I

    if-nez v10, :cond_14

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 502
    const-string/jumbo v10, "lockguard_wallpaper_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    .line 503
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 505
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 508
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "camera_gesture"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 509
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "lift_to_wake"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 510
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "tap_to_wake"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 512
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "auto_rotate"

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "power"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 515
    .local v5, "pm":Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    .line 516
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v10

    iput v10, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120024

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    .line 518
    const-string/jumbo v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 520
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 521
    const-string/jumbo v11, "oem.autobrightctl.animation.support"

    .line 520
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    .line 523
    const-string/jumbo v10, "manual_brightness_displays"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 524
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v10, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 525
    new-instance v10, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    .line 526
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v10}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 528
    const-string/jumbo v10, "theme_accent_color"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 529
    const-string/jumbo v10, "led_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 530
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 531
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mWhiteColorStringIds:[I

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 532
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v11, 0x7f0b035a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 540
    :goto_7
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v11, 0x7f0e01d7

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 541
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 542
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 543
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 545
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 547
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 549
    :cond_5
    const-string/jumbo v10, "night_mode_enabled_op"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 550
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_6

    .line 551
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 553
    :cond_6
    const-string/jumbo v10, "night_mode_level_op"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    .line 554
    const-string/jumbo v10, "screen_color_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    .line 555
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v10, :cond_7

    .line 556
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v10, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V

    .line 561
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v10, :cond_8

    .line 562
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 564
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string/jumbo v11, "oem.read_mode.support"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings_ex/DisplaySettings;->isSupportReadingMode:Z

    .line 565
    const-string/jumbo v10, "oneplus_reading_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    .line 566
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/android/settings_ex/DisplaySettings;->isSupportReadingMode:Z

    if-eqz v10, :cond_17

    .line 572
    :cond_9
    :goto_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v10, :cond_c

    .line 573
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_a

    .line 574
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 576
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v10, :cond_b

    .line 577
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 579
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v10, :cond_c

    .line 580
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 280
    :cond_c
    const-string/jumbo v10, "oneplus_night_mode"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mOnePlusNightModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mOnePlusNightModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void

    .line 309
    .end local v4    # "enableOperatorName":Z
    .end local v5    # "pm":Landroid/os/PowerManager;
    .end local v8    # "themeMode":I
    :cond_d
    const-string/jumbo v10, "auto_brightness"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .restart local v4    # "enableOperatorName":Z
    :cond_e
    const-string/jumbo v10, "lift_to_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 337
    :cond_f
    const-string/jumbo v10, "doze"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    :cond_10
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 349
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 352
    :cond_11
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "oneplus_proximity_wake"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 353
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "oneplus_hand_up_proximity"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_3

    .line 450
    :cond_12
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "vr_display_pref"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_4

    .line 467
    :cond_13
    const/4 v10, 0x1

    goto/16 :goto_5

    .line 500
    .restart local v8    # "themeMode":I
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 533
    .restart local v5    # "pm":Landroid/os/PowerManager;
    :cond_15
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 534
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings_ex/DisplaySettings;->mBlackColorStringIds:[I

    invoke-virtual {v10, v11, v12}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 535
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v11, 0x7f0b0362

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 537
    :cond_16
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v11, 0x7f0b035a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 567
    :cond_17
    iget-object v10, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 734
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->stopObserving()V

    .line 732
    :cond_0
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 4
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v2, 0xff

    .line 1173
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    .line 1186
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v3, :cond_1

    .line 1187
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1190
    .local v1, "val":I
    if-le v1, v2, :cond_0

    move v1, v2

    .line 1192
    :cond_0
    int-to-float v2, v1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    .line 1193
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    .line 1172
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v3, :cond_3

    .line 1196
    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1199
    .restart local v1    # "val":I
    if-le v1, v2, :cond_2

    move v1, v2

    .line 1201
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    goto :goto_0

    .line 1203
    .end local v1    # "val":I
    :cond_3
    int-to-float v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 1204
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 711
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 713
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 709
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 953
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v14, "screen_timeout"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 955
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 956
    .local v12, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "screen_off_timeout"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 957
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v12    # "value":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    move-object/from16 v14, p2

    .line 963
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 964
    .local v2, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "screen_brightness_mode"

    .line 965
    if-eqz v2, :cond_c

    const/4 v14, 0x1

    .line 964
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 967
    .end local v2    # "auto":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    move-object/from16 v14, p2

    .line 968
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 969
    .local v6, "isShow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "show_network_name_mode"

    .line 970
    if-eqz v6, :cond_d

    const/4 v14, 0x1

    .line 969
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 972
    .end local v6    # "isShow":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    move-object/from16 v14, p2

    .line 973
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 974
    .local v13, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wake_gesture_enabled"

    if-eqz v13, :cond_e

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 976
    .end local v13    # "value":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    move-object/from16 v14, p2

    .line 977
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 978
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "doze_enabled"

    if-eqz v13, :cond_f

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 979
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/DisplaySettings;->updateDozeMode(Z)V

    .line 983
    .end local v13    # "value":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mProxWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    move-object/from16 v14, p2

    .line 984
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 985
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "prox_wake_enabled"

    if-eqz v13, :cond_10

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 987
    .end local v13    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandUpProximityPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v14, p2

    .line 988
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 989
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "prox_wake_enabled"

    if-eqz v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 993
    .end local v13    # "value":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_7

    move-object/from16 v14, p2

    .line 994
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 995
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "double_tap_to_wake"

    if-eqz v13, :cond_12

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    .end local v13    # "value":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_8

    move-object/from16 v14, p2

    .line 998
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 999
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_gesture_disabled"

    .line 1000
    if-eqz v13, :cond_13

    const/4 v14, 0x0

    .line 999
    :goto_8
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1002
    .end local v13    # "value":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_9

    move-object/from16 v14, p2

    .line 1003
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1004
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_double_tap_power_gesture_disabled"

    .line 1005
    if-eqz v13, :cond_14

    const/4 v14, 0x0

    .line 1004
    :goto_9
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    .end local v13    # "value":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    .line 1009
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1011
    .restart local v12    # "value":I
    const-string/jumbo v14, "uimode"

    .line 1010
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    .line 1012
    .local v11, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v11, v12}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    .end local v11    # "uiManager":Landroid/app/UiModeManager;
    .end local v12    # "value":I
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_15

    .line 1019
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1020
    .restart local v13    # "value":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    if-nez v14, :cond_b

    .line 1021
    new-instance v14, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    .line 1023
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v13}, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->setValue(Z)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1026
    const/4 v14, 0x1

    return v14

    .line 958
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 959
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 965
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 970
    .end local v2    # "auto":Z
    .restart local v6    # "isShow":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 974
    .end local v6    # "isShow":Z
    .restart local v13    # "value":Z
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 978
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 985
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 989
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 995
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 1000
    :cond_13
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 1005
    :cond_14
    const/4 v14, 0x1

    goto/16 :goto_9

    .line 1013
    .end local v13    # "value":Z
    :catch_1
    move-exception v3

    .line 1014
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist night mode setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1028
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_18

    .line 1029
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1030
    .restart local v13    # "value":Z
    if-eqz v13, :cond_17

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->updateNotifyLightStatus(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_16

    .line 1032
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1034
    :cond_16
    const/4 v14, 0x1

    return v14

    .line 1030
    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    .line 1036
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_18
    const-string/jumbo v14, "theme_accent_color"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v10, p2

    .line 1037
    check-cast v10, Ljava/lang/String;

    .line 1038
    .local v10, "theme":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 1039
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    .line 1063
    .end local v10    # "theme":Ljava/lang/String;
    :cond_19
    :goto_c
    const-string/jumbo v14, "op_theme_mode"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1065
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1066
    .restart local v12    # "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1068
    const-string/jumbo v14, "op_theme_mode"

    invoke-static {v14, v12}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1070
    .local v8, "msg":Landroid/os/Message;
    iput v12, v8, Landroid/os/Message;->arg1:I

    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mDefaultHandler:Lcom/android/settings_ex/DisplaySettings$DefaultHandler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lcom/android/settings_ex/DisplaySettings$DefaultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1072
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/DisplaySettings;->getThemeModeValue(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/DisplaySettings;->updateThemeModePreferenceDescription(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1077
    .end local v8    # "msg":Landroid/os/Message;
    .end local v12    # "value":I
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1d

    .line 1078
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1080
    .local v4, "enabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "night_mode_enabled"

    if-eqz v4, :cond_23

    const/4 v14, 0x1

    .line 1079
    :goto_e
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1082
    const-string/jumbo v15, "oem_nightmode_progress_status"

    const/16 v16, 0x190

    .line 1081
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1083
    .local v9, "progress":I
    if-eqz v4, :cond_29

    .line 1084
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_1b

    .line 1085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e026f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1089
    :cond_1b
    if-ltz v9, :cond_24

    const/16 v14, 0x64

    if-ge v9, v14, :cond_24

    .line 1090
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1102
    :cond_1c
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1122
    .end local v4    # "enabled":Z
    .end local v9    # "progress":I
    :cond_1d
    :goto_10
    const/4 v14, 0x1

    return v14

    .line 1041
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

    .line 1042
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_19

    .line 1043
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1044
    if-nez v5, :cond_1f

    .line 1045
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1047
    :cond_1f
    add-int/lit8 v14, v5, 0x7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1042
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1052
    .end local v5    # "i":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1053
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_19

    .line 1054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1055
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/android/settings_ex/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_c

    .line 1053
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1073
    .end local v5    # "i":I
    .end local v10    # "theme":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1074
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 1080
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "objValue":Ljava/lang/Object;
    .restart local v4    # "enabled":Z
    :cond_23
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1091
    .restart local v9    # "progress":I
    :cond_24
    const/16 v14, 0x64

    if-lt v9, v14, :cond_25

    const/16 v14, 0xc7

    if-gt v9, v14, :cond_25

    .line 1092
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1093
    :cond_25
    const/16 v14, 0xc8

    if-lt v9, v14, :cond_26

    const/16 v14, 0x12b

    if-gt v9, v14, :cond_26

    .line 1094
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1095
    :cond_26
    const/16 v14, 0x12c

    if-lt v9, v14, :cond_27

    const/16 v14, 0x18f

    if-gt v9, v14, :cond_27

    .line 1096
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1097
    :cond_27
    const/16 v14, 0x190

    if-lt v9, v14, :cond_28

    const/16 v14, 0x1f3

    if-gt v9, v14, :cond_28

    .line 1098
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1099
    :cond_28
    const/16 v14, 0x1f4

    if-lt v9, v14, :cond_1c

    const/16 v14, 0x258

    if-gt v9, v14, :cond_1c

    .line 1100
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_f

    .line 1104
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_1d

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenColorModePreference()V

    goto/16 :goto_10
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1161
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msm_screen_better_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1163
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings_ex"

    const-string/jumbo v3, "com.android.settings_ex.OPScreenBetterActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1165
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1166
    const/4 v2, 0x1

    return v2

    .line 1168
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
    .line 1128
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 1131
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

    .line 1281
    if-eqz p1, :cond_1

    .line 1283
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1284
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v2, :cond_0

    .line 1285
    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1286
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->onSaveNightModeSeekBarVale(I)V

    .line 1280
    :cond_1
    return-void

    .line 1288
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 1289
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_3

    .line 1290
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v3, :cond_0

    .line 1291
    iput v3, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1292
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1294
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    .line 1295
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_4

    .line 1296
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v4, :cond_0

    .line 1297
    iput v4, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1298
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1300
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    .line 1301
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_5

    .line 1302
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v5, :cond_0

    .line 1303
    iput v5, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1304
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1306
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_6

    .line 1307
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_6

    .line 1308
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v6, :cond_0

    .line 1309
    iput v6, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1310
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1312
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 1313
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 1314
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1315
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    .line 1316
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 679
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 680
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 682
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 683
    const-string/jumbo v8, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    .line 682
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 684
    .local v2, "currentTimeout":J
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 685
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 687
    const-string/jumbo v8, "device_policy"

    .line 686
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 688
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 689
    invoke-static {v7}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 692
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 691
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    .line 693
    .local v4, "maxTimeout":J
    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v7, v4, v5, v0}, Lcom/android/settings_ex/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 695
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v4    # "maxTimeout":J
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 697
    const-string/jumbo v7, "wallpaper"

    const-string/jumbo v8, "no_set_wallpaper"

    invoke-direct {p0, v7, v8}, Lcom/android/settings_ex/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    .line 701
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v7, v8}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 704
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

    .line 678
    return-void

    .line 704
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 666
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 668
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 671
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 668
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 672
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 673
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 672
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 665
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1325
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 724
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 723
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1329
    return-void
.end method

.method public saveBrightnessDataBase(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 1229
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_0

    .line 1230
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$7;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1211
    :goto_0
    return-void

    .line 1249
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v1, :cond_1

    .line 1250
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$8;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1264
    :cond_1
    int-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 1265
    .local v0, "adj":F
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/DisplaySettings$9;-><init>(Lcom/android/settings_ex/DisplaySettings;F)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
