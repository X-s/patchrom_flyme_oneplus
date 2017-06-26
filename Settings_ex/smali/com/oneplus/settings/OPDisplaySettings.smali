.class public Lcom/oneplus/settings/OPDisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;,
        Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 100.0f

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field private static final DARK_MODE_ACTION:Ljava/lang/String; = "android.settings.OEM_BLACK_MODE"

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_AUTO_BRIGHTNESS:Ljava/lang/String; = "auto_brightness"

.field private static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"

.field private static final KEY_BACK_TOP_THEME:Ljava/lang/String; = "back_topic_theme"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CTS_SWITCH_DESKTOP_LAUNCHER:Ljava/lang/String; = "cts_switch_desktop_launcher"

.field private static final KEY_DARK_MODE:Ljava/lang/String; = "dark_mode"

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final KEY_DISPLAY_SYSTEM:Ljava/lang/String; = "display_system"

.field private static final KEY_DOZE:Ljava/lang/String; = "doze"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field private static final KEY_LOCKGUARD_WALLPAPER:Ljava/lang/String; = "lockguard_wallpaper_settings"

.field private static final KEY_MANUAL_BRIGHT:Ljava/lang/String; = "manual_brightness_displays"

.field private static final KEY_MSM_EYECARE_SETTINGS:Ljava/lang/String; = "eyecare_mode_settings"

.field private static final KEY_MSM_SCREEN_BETTER:Ljava/lang/String; = "msm_screen_better_settings"

.field private static final KEY_SCREEN_BETTER:Ljava/lang/String; = "screen_better_settings"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPDisplaySettings"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"


# instance fields
.field private isAutoSwitchClickedDrivenBrightnessChange:Z

.field private mActivity:Landroid/app/Activity;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBacktopThemePreference:Landroid/preference/SwitchPreference;

.field private mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessCategory:Landroid/preference/PreferenceCategory;

.field private mBrightnessObserver:Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurentValue:I

.field private mDarkModeEnable:I

.field private mDarkModePreferce:Landroid/preference/SwitchPreference;

.field private mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

.field private mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

.field private mDisableNavKeysBrightnessEnable:I

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mExternalChange:Z

.field private mFontHandler:Landroid/os/Handler;

.field private mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLockWallPaperPreference:Landroid/preference/Preference;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mMsmScreenPreference:Landroid/preference/Preference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/preference/SwitchPreference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPower:Landroid/os/IPowerManager;

.field private mPreValue:I

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenPreference:Landroid/preference/Preference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

.field private mSystemRootPreference:Landroid/preference/PreferenceCategory;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1014
    new-instance v0, Lcom/oneplus/settings/OPDisplaySettings$5;

    invoke-direct {v0}, Lcom/oneplus/settings/OPDisplaySettings$5;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 122
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 200
    new-instance v0, Lcom/oneplus/settings/OPDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDisplaySettings$1;-><init>(Lcom/oneplus/settings/OPDisplaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 426
    iput v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPreValue:I

    .line 427
    iput v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    .line 894
    new-instance v0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;-><init>(Lcom/oneplus/settings/OPDisplaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    .line 920
    new-instance v0, Lcom/oneplus/settings/OPDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDisplaySettings$4;-><init>(Lcom/oneplus/settings/OPDisplaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mFontHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPDisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->killSelf()V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/oneplus/settings/OPDisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/oneplus/settings/OPDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/oneplus/settings/OPDisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateMode()V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/settings/OPDisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateAutoSwitchDrivenSlider()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/OPDisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPDisplaySettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 497
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Lcom/oneplus/widget/preference/OPListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Lcom/oneplus/widget/preference/OPListPreference;

    .prologue
    .line 547
    iget-object v11, p0, Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 548
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 549
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 583
    :goto_1
    return-void

    .line 548
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 552
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/widget/preference/OPListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 553
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/oneplus/widget/preference/OPListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 554
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 557
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 558
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 559
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 563
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

    .line 564
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/widget/preference/OPListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 565
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Lcom/oneplus/widget/preference/OPListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Lcom/oneplus/widget/preference/OPListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 567
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 568
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/oneplus/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    .line 582
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Lcom/oneplus/widget/preference/OPListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 569
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

    .line 573
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/oneplus/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 582
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1012
    return-void

    .line 1011
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 930
    const/4 v2, 0x0

    .line 931
    .local v2, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 932
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 934
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 939
    :goto_0
    if-eqz v0, :cond_0

    .line 940
    const/4 v2, 0x1

    .line 943
    :cond_0
    return v2

    .line 935
    :catch_0
    move-exception v1

    .line 937
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 518
    const v0, 0x1120026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x1040041

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_0
    const-string v4, "OPDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDozeAvailable : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " name : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " -- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    return v2

    .line 506
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 511
    goto :goto_1

    :cond_3
    move v2, v3

    .line 514
    goto :goto_2
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 502
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

.method private killSelf()V
    .locals 2

    .prologue
    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "home":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 662
    return-void
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1125
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1126
    const/4 p1, 0x2

    .line 1129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 1136
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-void

    .line 1137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1166
    iget-boolean v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 1167
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateBrightnessAutomatically()V

    .line 1176
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1171
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

    .line 1172
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1173
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 484
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 491
    .local v0, "value":F
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 492
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1005
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1006
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1008
    :cond_0
    return-void

    .line 1006
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1146
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMode mAutomaticAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1148
    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1150
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1153
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    .line 1154
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1162
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 995
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 997
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 999
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1001
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 431
    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_1

    .line 433
    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_0

    .line 434
    iput-boolean v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 481
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateBrightnessAutomatically()V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 444
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 445
    iput-boolean v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x0

    .line 454
    .local v0, "isOK":Z
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPreValue:I

    if-nez v2, :cond_3

    .line 455
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPreValue:I

    .line 456
    const/4 v0, 0x1

    .line 459
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    if-nez v2, :cond_4

    .line 460
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    .line 461
    const/4 v0, 0x1

    .line 464
    :cond_4
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    .line 466
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 467
    const-string v2, "display"

    const-string v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_5
    const-string v2, "display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider (mMaximumBacklight - mMinimumBacklight) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 476
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 478
    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPreValue:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 721
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateScreenSaverSummary()V

    .line 723
    const-string v3, "oneplus_font_settings"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPDisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 726
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_brightness_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 729
    .local v0, "brightnessMode":I
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 730
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateMode()V

    .line 731
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateSlider()V

    .line 734
    .end local v0    # "brightnessMode":I
    :cond_0
    const-string v3, "persist.sys.blackmode"

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "isDarkMode":Ljava/lang/String;
    const-string v3, "OPDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OPDisplaySettings DarkMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz v1, :cond_1

    .line 737
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_black_mode"

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 738
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 741
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wake_gesture_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 743
    .local v2, "value":I
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 747
    .end local v2    # "value":I
    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 748
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "doze_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 749
    .restart local v2    # "value":I
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_9

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    const-string v3, "OPDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDozePreference : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v2    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    .line 754
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 756
    .restart local v2    # "value":I
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_a

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 758
    .end local v2    # "value":I
    :cond_4
    return-void

    .end local v1    # "isDarkMode":Ljava/lang/String;
    .restart local v0    # "brightnessMode":I
    :cond_5
    move v3, v5

    .line 729
    goto/16 :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "isDarkMode":Ljava/lang/String;
    :cond_6
    move v3, v5

    .line 737
    goto :goto_1

    :cond_7
    move v3, v5

    .line 738
    goto :goto_2

    .restart local v2    # "value":I
    :cond_8
    move v3, v5

    .line 743
    goto :goto_3

    :cond_9
    move v3, v5

    .line 749
    goto :goto_4

    :cond_a
    move v4, v5

    .line 756
    goto :goto_5
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 522
    iget-object v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

    .line 524
    .local v3, "preference":Lcom/oneplus/widget/preference/OPListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 526
    const-string v4, ""

    .line 543
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/oneplus/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    return-void

    .line 528
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Lcom/oneplus/widget/preference/OPListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 529
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/oneplus/widget/preference/OPListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 530
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 531
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 533
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 534
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 535
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 536
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 537
    move v0, v2

    .line 534
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 540
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Lcom/oneplus/widget/preference/OPListPreference;->getContext()Landroid/content/Context;

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
    .line 586
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 588
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 589
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 590
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 591
    add-int/lit8 v4, v0, -0x1

    .line 595
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 593
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1183
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 214
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v7, 0x7f08003c

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->addPreferencesFromResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mActivity:Landroid/app/Activity;

    .line 221
    const-string v7, "screen_brightness"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "power"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 229
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v7

    iput v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    .line 230
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    iput v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMaximumBacklight:I

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1120026

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomaticAvailable:Z

    .line 233
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 234
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v7, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v10}, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;-><init>(Lcom/oneplus/settings/OPDisplaySettings;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessObserver:Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

    .line 237
    const-string v7, "manual_brightness_displays"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 238
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 245
    const-string v7, "display_system"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    .line 247
    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 248
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x112006a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_0
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/oneplus/widget/preference/OPListPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

    .line 254
    const-string v7, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v4, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 256
    .local v2, "currentTimeout":J
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/oneplus/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

    invoke-virtual {v7, p0}, Lcom/oneplus/widget/preference/OPListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenTimeoutPreference:Lcom/oneplus/widget/preference/OPListPreference;

    invoke-direct {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->disableUnusableTimeouts(Lcom/oneplus/widget/preference/OPListPreference;)V

    .line 259
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/OPDisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 261
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/settings/OPDisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 262
    const-string v7, "auto_brightness"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 263
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    :goto_0
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 269
    const-string v7, "lift_to_wake"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 270
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    :cond_1
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "oem.ambient.support"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 284
    const-string v7, "doze"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 285
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    :goto_1
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 295
    const-string v7, "auto_rotate"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/DropDownPreference;

    .line 296
    .local v6, "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    const v7, 0x7f0c0cdf

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/android/settings_ex/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 304
    const v5, 0x7f0c0ce2

    .line 312
    .local v5, "rotateLockedResourceId":I
    :goto_2
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Lcom/android/settings_ex/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settings_ex/DropDownPreference;->setSelectedItem(I)V

    .line 314
    new-instance v7, Lcom/oneplus/settings/OPDisplaySettings$2;

    invoke-direct {v7, p0, v0}, Lcom/oneplus/settings/OPDisplaySettings$2;-><init>(Lcom/oneplus/settings/OPDisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 326
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :goto_4
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v10, "auto_rotate"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    const-string v7, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 331
    const-string v7, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 338
    :cond_2
    const-string v7, "back_topic_theme"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    .line 339
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "oem.cover.support"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 342
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessObserver:Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

    invoke-virtual {v7}, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->startObserving()V

    .line 351
    const-string v7, "screen_better_settings"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "oem_acc_breath_light"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightEnable:I

    .line 358
    const-string v7, "notify_light_enable"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    .line 359
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    iget v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightEnable:I

    if-nez v7, :cond_c

    move v7, v9

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 362
    const-string v7, "buttons_brightness"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    .line 363
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "oem.button.light.support"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 365
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "buttons_brightness"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightnessEnable:I

    .line 367
    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    iget v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightnessEnable:I

    if-nez v7, :cond_d

    move v7, v9

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 372
    :goto_7
    const-string v7, "dark_mode"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    .line 373
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "oem_black_mode"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeEnable:I

    .line 375
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    iget v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeEnable:I

    if-nez v10, :cond_f

    :goto_8
    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "oem.op_dark_mode.support"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 377
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "oem.screenbetter.support"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 381
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/OPDisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    :cond_5
    const-string v7, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 385
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 398
    return-void

    .line 265
    :cond_6
    const-string v7, "auto_brightness"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_7
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    const-string v10, "doze"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/OPDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 306
    .restart local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :cond_8
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v8, :cond_9

    .line 307
    const v5, 0x7f0c0ce0

    .restart local v5    # "rotateLockedResourceId":I
    goto/16 :goto_2

    .line 309
    .end local v5    # "rotateLockedResourceId":I
    :cond_9
    const v5, 0x7f0c0ce1

    .restart local v5    # "rotateLockedResourceId":I
    goto/16 :goto_2

    :cond_a
    move v7, v9

    .line 313
    goto/16 :goto_3

    .line 323
    .end local v5    # "rotateLockedResourceId":I
    .end local v6    # "rotatePreference":Lcom/android/settings_ex/DropDownPreference;
    :cond_b
    const-string v7, "auto_rotate"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPDisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    move v7, v8

    .line 360
    goto/16 :goto_5

    :cond_d
    move v7, v8

    .line 367
    goto/16 :goto_6

    .line 369
    :cond_e
    iget-object v7, p0, Lcom/oneplus/settings/OPDisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    :cond_f
    move v9, v8

    .line 375
    goto/16 :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 646
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0ba2

    new-instance v2, Lcom/oneplus/settings/OPDisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPDisplaySettings$3;-><init>(Lcom/oneplus/settings/OPDisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessObserver:Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBrightnessObserver:Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPDisplaySettings$BrightnessObserver;->stopObserving()V

    .line 422
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 423
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 6
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    const/16 v2, 0xff

    .line 1067
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mExternalChange:Z

    .line 1069
    iget-boolean v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    if-nez v3, :cond_1

    .line 1071
    iget v3, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v3

    .line 1075
    .local v1, "val":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "! mAutomatic val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMinimumBacklight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1076
    if-le v1, v2, :cond_0

    move v1, v2

    .line 1077
    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPDisplaySettings;->setBrightness(I)V

    .line 1090
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 1082
    :cond_1
    int-to-float v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 1083
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPDisplaySettings;->setBrightnessAdj(F)V

    .line 1085
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAutomatic adj : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMinimumBacklight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mMinimumBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 641
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 642
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 820
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "key":Ljava/lang/String;
    const-string v6, "screen_timeout"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 823
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 824
    .local v3, "value":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zhuyang--onPreferenceChange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_off_timeout"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 826
    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lcom/oneplus/settings/OPDisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v3    # "value":I
    :cond_0
    :goto_0
    return v5

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "OPDisplaySettings"

    const-string v6, "could not persist screen timeout setting"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 833
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_3

    .line 834
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 835
    .local v0, "auto":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    if-eqz v0, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    const-string v4, "display"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auto : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput-boolean v0, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    .line 841
    iput-boolean v5, p0, Lcom/oneplus/settings/OPDisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 842
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateAutoSwitchDrivenSlider()V

    goto :goto_0

    .line 847
    .end local v0    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_5

    .line 848
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 849
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wake_gesture_enabled"

    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 853
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_7

    .line 854
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 855
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "doze_enabled"

    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 859
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_9

    .line 860
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 861
    .restart local v3    # "value":Z
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPDisplaySettings;->updateNotifyLightStatus(I)V

    goto :goto_0

    .line 865
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_b

    .line 866
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 867
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "buttons_brightness"

    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 872
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModePreferce:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_d

    .line 873
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 874
    .restart local v3    # "value":Z
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    if-nez v4, :cond_c

    .line 875
    new-instance v4, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;-><init>(Lcom/oneplus/settings/OPDisplaySettings;)V

    iput-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    .line 877
    :cond_c
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->setValue(Z)V

    .line 878
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mDarkModeRunnable:Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 882
    .end local v3    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_d
    iget-object v6, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_0

    .line 883
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 884
    .restart local v3    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "camera_double_tap_power_gesture_disabled"

    if-eqz v3, :cond_e

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 948
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    if-ne p1, v1, :cond_2

    .line 949
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPDisplaySettings;->showDialog(I)V

    .line 985
    :cond_0
    :goto_0
    return v2

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    goto :goto_0

    .line 958
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "back_topic_theme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_acc_backgap_theme"

    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 963
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "switch_state"

    const-string v3, "on"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 960
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 968
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "switch_state"

    const-string v3, "off"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 777
    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    if-ne v2, p2, :cond_1

    .line 778
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 810
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_0
    return v2

    .line 779
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lockguard_wallpaper_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.oneplus.keyguardwallpaper"

    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/OPDisplaySettings;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 789
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.keyguardwallpaper"

    const-string v3, "com.oneplus.keyguardwallpaper.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 797
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intents":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateState()V

    .line 619
    invoke-direct {p0}, Lcom/oneplus/settings/OPDisplaySettings;->updateLockScreenRotation()V

    .line 620
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 627
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 630
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_backgap_theme"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 633
    return-void

    .line 630
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 600
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 607
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 610
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 611
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 612
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

    .line 613
    return-void

    .line 601
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OPDisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 402
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPDisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 411
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 412
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 413
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

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    return-void

    .line 403
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "OPDisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveBrightnessDataBase(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 1095
    iget-boolean v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 1096
    int-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 1097
    .local v0, "adj":F
    new-instance v1, Lcom/oneplus/settings/OPDisplaySettings$6;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/settings/OPDisplaySettings$6;-><init>(Lcom/oneplus/settings/OPDisplaySettings;F)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1116
    .end local v0    # "adj":F
    :goto_0
    return-void

    .line 1104
    :cond_0
    new-instance v1, Lcom/oneplus/settings/OPDisplaySettings$7;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/OPDisplaySettings$7;-><init>(Lcom/oneplus/settings/OPDisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 769
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPDisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
