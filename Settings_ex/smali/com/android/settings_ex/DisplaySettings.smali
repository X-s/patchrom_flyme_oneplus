.class public Lcom/android/settings_ex/DisplaySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 100.0f

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_AUTO_BRIGHTNESS:Ljava/lang/String; = "auto_brightness"

.field private static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"

.field private static final KEY_BACK_TOP_THEME:Ljava/lang/String; = "back_topic_theme"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_CTS_SWITCH_DESKTOP_LAUNCHER:Ljava/lang/String; = "cts_switch_desktop_launcher"

.field private static final KEY_DISPLAY_SYSTEM:Ljava/lang/String; = "display_system"

.field private static final KEY_DOZE:Ljava/lang/String; = "doze"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_LIFT_TO_WAKE:Ljava/lang/String; = "lift_to_wake"

.field private static final KEY_LOCKGUARD_WALLPAPER:Ljava/lang/String; = "lockguard_wallpaper_settings"

.field private static final KEY_MANUAL_BRIGHT:Ljava/lang/String; = "manual_brightness_displays"

.field private static final KEY_MSM_SCREEN_BETTER:Ljava/lang/String; = "msm_screen_better_settings"

.field private static final KEY_SCREEN_BETTER:Ljava/lang/String; = "screen_better_settings"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_DESKTOP_KEY:Ljava/lang/String; = "switch_desktop_launcher"

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"

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

.field private mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurentValue:I

.field private mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

.field private mDisableNavKeysBrightnessEnable:I

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mExternalChange:Z

.field private mFontHandler:Landroid/os/Handler;

.field private mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLauncherHandler:Landroid/os/Handler;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLockWallPaperPreference:Landroid/preference/Preference;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mMsmScreenPreference:Landroid/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPower:Landroid/os/IPowerManager;

.field private mPreValue:I

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenPreference:Landroid/preference/Preference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

.field private mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

.field private mSystemRootPreference:Landroid/preference/PreferenceCategory;

.field private mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1145
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$6;

    invoke-direct {v0}, Lcom/android/settings_ex/DisplaySettings$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 121
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 194
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$1;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 432
    iput v1, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 433
    iput v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 900
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$4;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mLauncherHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/android/settings_ex/DisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DisplaySettings$5;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/DisplaySettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DisplaySettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLauncher()V

    return-void
.end method

.method static synthetic access$900(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 508
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 573
    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 575
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 577
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 617
    :goto_1
    return-void

    .line 575
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 580
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 581
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 582
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 585
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 586
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 587
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 591
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

    .line 593
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 595
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 599
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 600
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 616
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

    .line 602
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

    .line 607
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 616
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1143
    return-void

    .line 1141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1060
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1062
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1067
    :goto_0
    if-eqz v0, :cond_0

    .line 1068
    const/4 v2, 0x1

    .line 1071
    :cond_0
    return v2

    .line 1063
    :catch_0
    move-exception v1

    .line 1065
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 542
    const v0, 0x1120022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x1040070

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 520
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_0
    const-string v4, "DisplaySettings"

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

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    return v2

    .line 520
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 527
    goto :goto_1

    :cond_3
    move v2, v3

    .line 538
    goto :goto_2
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 515
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

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_0
    return-void

    .line 1258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1295
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1309
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1302
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

    .line 1304
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1305
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 501
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

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

    .line 505
    return-void
.end method

.method private updateLauncher()V
    .locals 4

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_h_system_cts_vertion"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 918
    .local v0, "launcher":I
    if-nez v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "com.oneplus.launcher"

    const-string v3, "com.oneplus.launcher.Launcher"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/launcher/LauncherUtils;->switch2Launcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "com.android.launcher3"

    const-string v3, "com.android.launcher3.Launcher"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/launcher/LauncherUtils;->switch2Launcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1134
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1135
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1138
    :cond_0
    return-void

    .line 1135
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1272
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

    .line 1275
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1277
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1282
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1290
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 885
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 437
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_1

    .line 439
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_0

    .line 440
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 489
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateBrightnessAutomatically()V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 452
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 453
    iput-boolean v6, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    goto :goto_0

    .line 461
    :cond_2
    const/4 v0, 0x0

    .line 462
    .local v0, "isOK":Z
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    if-nez v2, :cond_3

    .line 463
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 464
    const/4 v0, 0x1

    .line 467
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-nez v2, :cond_4

    .line 468
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 469
    const/4 v0, 0x1

    .line 472
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    .line 474
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 475
    const-string v2, "display"

    const-string v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 479
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 482
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/android/settings_ex/DisplaySettings;->mPreValue:I

    .line 484
    const-string v2, "display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider (mMaximumBacklight - mMinimumBacklight) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    iget v5, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 848
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateScreenSaverSummary()V

    .line 850
    const-string v2, "oneplus_font_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 856
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 858
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateMode()V

    .line 859
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateSlider()V

    .line 864
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 867
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 871
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 874
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 875
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDozePreference : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v1    # "value":I
    :cond_2
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_3
    move v2, v4

    .line 856
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_4
    move v2, v4

    .line 867
    goto :goto_1

    :cond_5
    move v3, v4

    .line 874
    goto :goto_2
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 547
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 549
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 551
    const-string v4, ""

    .line 569
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 570
    return-void

    .line 553
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 554
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 555
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 556
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 558
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 559
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 560
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 561
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 562
    move v0, v2

    .line 559
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 565
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09046c

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
    .line 620
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "indices":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 623
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 624
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 625
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 626
    add-int/lit8 v4, v0, -0x1

    .line 630
    .end local v3    # "thisVal":F
    :goto_1
    return v4

    .line 628
    .restart local v3    # "thisVal":F
    :cond_0
    move v2, v3

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    .end local v3    # "thisVal":F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 208
    .local v5, "resolver":Landroid/content/ContentResolver;
    const v8, 0x7f060024

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->addPreferencesFromResource(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mActivity:Landroid/app/Activity;

    .line 215
    const-string v8, "screen_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v11, "power"

    invoke-virtual {v8, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 225
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    .line 226
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMaximumBacklight:I

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1120022

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomaticAvailable:Z

    .line 231
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 233
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v8, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v11}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    .line 236
    const-string v8, "manual_brightness_displays"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightPreference:Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/android/settings_ex/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 244
    const-string v8, "display_system"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    .line 246
    const-string v8, "screensaver"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 247
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x1120063

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_0
    const-string v8, "screen_timeout"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 254
    const-string v8, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v5, v8, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 256
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 259
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 261
    const-string v8, "font_size"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/WarnedListPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    .line 262
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings_ex/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings_ex/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 266
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 267
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    :goto_0
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 273
    const-string v8, "lift_to_wake"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 274
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    :cond_1
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v11, "oem.ambient.support"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 290
    const-string v8, "doze"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 291
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    :goto_1
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 301
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/notification/DropDownPreference;

    .line 302
    .local v7, "rotatePreference":Lcom/android/settings_ex/notification/DropDownPreference;
    const v8, 0x7f090b07

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 311
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->allowAllRotations(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 312
    const v6, 0x7f090b0a

    .line 320
    .local v6, "rotateLockedResourceId":I
    :goto_2
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 322
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedItem(I)V

    .line 324
    new-instance v8, Lcom/android/settings_ex/DisplaySettings$2;

    invoke-direct {v8, p0, v0}, Lcom/android/settings_ex/DisplaySettings$2;-><init>(Lcom/android/settings_ex/DisplaySettings;Landroid/app/Activity;)V

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    .line 336
    .end local v6    # "rotateLockedResourceId":I
    .end local v7    # "rotatePreference":Lcom/android/settings_ex/notification/DropDownPreference;
    :goto_4
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v11, "auto_rotate"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    const-string v8, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 342
    const-string v8, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 349
    :cond_2
    const-string v8, "cts_switch_desktop_launcher"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    .line 350
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3

    .line 351
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_3
    const-string v8, "switch_desktop_launcher"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v11, "oem.dullanucher.support.ignore"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 358
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_4

    .line 359
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    :cond_4
    const-string v8, "back_topic_theme"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    .line 370
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v11, "oem.cover.support"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 374
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    :goto_5
    const-string v8, "buttons_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    .line 384
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v11, "oem.button.light.support"

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "buttons_brightness"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightnessEnable:I

    .line 389
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    iget v11, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightnessEnable:I

    if-nez v11, :cond_d

    :goto_6
    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 394
    :goto_7
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v8}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 402
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    const-string v8, "screen_better_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    .line 409
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 410
    const-string v8, "msm_screen_better_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    .line 411
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 412
    const-string v1, ""

    .line 413
    .local v1, "mDev":Ljava/lang/String;
    const-string v8, "ro.board.platform"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
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

    .line 415
    const-string v8, "msm8974"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 416
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mMsmScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    :cond_5
    :goto_8
    return-void

    .line 269
    .end local v1    # "mDev":Ljava/lang/String;
    :cond_6
    const-string v8, "auto_brightness"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_7
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "doze"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 314
    .restart local v7    # "rotatePreference":Lcom/android/settings_ex/notification/DropDownPreference;
    :cond_8
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v9, :cond_9

    .line 315
    const v6, 0x7f090b08

    .restart local v6    # "rotateLockedResourceId":I
    goto/16 :goto_2

    .line 317
    .end local v6    # "rotateLockedResourceId":I
    :cond_9
    const v6, 0x7f090b09

    .restart local v6    # "rotateLockedResourceId":I
    goto/16 :goto_2

    :cond_a
    move v8, v10

    .line 322
    goto/16 :goto_3

    .line 333
    .end local v6    # "rotateLockedResourceId":I
    .end local v7    # "rotatePreference":Lcom/android/settings_ex/notification/DropDownPreference;
    :cond_b
    const-string v8, "auto_rotate"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 377
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    const-string v11, "eyecare_mode_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    :cond_d
    move v10, v9

    .line 389
    goto/16 :goto_6

    .line 391
    :cond_e
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 417
    .restart local v1    # "mDev":Ljava/lang/String;
    :cond_f
    const-string v8, "msm8994"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 418
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mSystemRootPreference:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/DisplaySettings;->mScreenPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 755
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090a09

    new-instance v2, Lcom/android/settings_ex/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DisplaySettings$3;-><init>(Lcom/android/settings_ex/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings;->mBrightnessObserver:Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/DisplaySettings$BrightnessObserver;->stopObserving()V

    .line 428
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 429
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 5
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    .line 1200
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mExternalChange:Z

    .line 1202
    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-nez v2, :cond_0

    .line 1204
    iget v2, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

    add-int v1, p2, v2

    .line 1209
    .local v1, "val":I
    invoke-direct {p0, v1}, Lcom/android/settings_ex/DisplaySettings;->setBrightness(I)V

    .line 1212
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "! mAutomatic val : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMinimumBacklight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

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

    .line 1226
    .end local v1    # "val":I
    :goto_0
    return-void

    .line 1217
    :cond_0
    int-to-float v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v2, v3

    .line 1218
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/settings_ex/DisplaySettings;->setBrightnessAdj(F)V

    .line 1220
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

    iget v4, p0, Lcom/android/settings_ex/DisplaySettings;->mMinimumBacklight:I

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
    .line 745
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 750
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 751
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 971
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "key":Ljava/lang/String;
    const-string v8, "screen_timeout"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 974
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 975
    .local v5, "value":I
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "screen_off_timeout"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 977
    int-to-long v8, v5

    invoke-direct {p0, v8, v9}, Lcom/android/settings_ex/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    .end local v5    # "value":I
    :cond_0
    :goto_0
    return v7

    .line 978
    :catch_0
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DisplaySettings"

    const-string v8, "could not persist screen timeout setting"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 985
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v8, "font_size"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 989
    move-object v4, p2

    .line 991
    .local v4, "objValue2":Ljava/lang/Object;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 992
    .local v3, "mg":Landroid/os/Message;
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mFontHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    .end local v3    # "mg":Landroid/os/Message;
    .end local v4    # "objValue2":Ljava/lang/Object;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_4

    .line 1004
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1005
    .local v0, "auto":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_brightness_mode"

    if-eqz v0, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1010
    const-string v6, "display"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "auto : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iput-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    .line 1014
    iput-boolean v7, p0, Lcom/android/settings_ex/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1015
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateAutoSwitchDrivenSlider()V

    goto :goto_0

    .line 1021
    .end local v0    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_6

    .line 1022
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1023
    .local v5, "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wake_gesture_enabled"

    if-eqz v5, :cond_5

    move v6, v7

    :cond_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1029
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_8

    .line 1030
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1031
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "doze_enabled"

    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1038
    .end local v5    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    iget-object v8, p0, Lcom/android/settings_ex/DisplaySettings;->mDisableNavKeysBrightness:Landroid/preference/SwitchPreference;

    if-ne p1, v8, :cond_0

    .line 1039
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1040
    .restart local v5    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "buttons_brightness"

    if-eqz v5, :cond_9

    move v6, v7

    :cond_9
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1076
    iget-object v5, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    if-ne p1, v5, :cond_2

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1078
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->showDialog(I)V

    .line 1128
    :cond_0
    :goto_0
    return v4

    .line 1081
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    goto :goto_0

    .line 1086
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cts_switch_desktop_launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_h_system_cts_vertion"

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1094
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLauncher()V

    goto :goto_0

    .line 1098
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "back_topic_theme"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_acc_backgap_theme"

    iget-object v7, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1104
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1105
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "switch_state"

    const-string v5, "on"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1110
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oneplus.intent.action.THREE_BACK_COVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "switch_state"

    const-string v5, "off"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1117
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "msm_screen_better_settings"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "zhuyang--start--OPScreenBetterActivity"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1120
    .local v2, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings_ex"

    const-string v5, "com.android.settings_ex.OPScreenBetterActivity"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1123
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
    .line 937
    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/preference/SwitchPreference;

    if-ne v2, p2, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 961
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_0
    return v2

    .line 939
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lockguard_wallpaper_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.oneplus.keyguardwallpaper"

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/DisplaySettings;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 949
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 950
    .local v1, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.keyguardwallpaper"

    const-string v3, "com.oneplus.keyguardwallpaper.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 954
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 958
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "intents":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 678
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateState()V

    .line 679
    invoke-direct {p0}, Lcom/android/settings_ex/DisplaySettings;->updateLockScreenRotation()V

    .line 680
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v3, v6}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 688
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 690
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 692
    iget-object v6, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "oem_h_system_cts_vertion"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 700
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mBacktopThemePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_acc_backgap_theme"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 704
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oem.dullanucher.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 707
    const-string v2, ""

    .line 709
    .local v2, "mCurrentHome":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    .line 711
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 714
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    if-eqz v2, :cond_2

    .line 717
    const-string v3, "launcher3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 718
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 741
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v1    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "mCurrentHome":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v3, v5

    .line 692
    goto :goto_0

    :cond_4
    move v4, v5

    .line 700
    goto :goto_1

    .line 722
    .restart local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v1    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "mCurrentHome":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/DisplaySettings;->mSwitchDesktopPreference:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 728
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v1    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    .line 635
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 643
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 646
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 647
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f09047e

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

    .line 650
    return-void

    .line 637
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 8
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 658
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 668
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/settings_ex/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 669
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "fontSizeNames":[Ljava/lang/String;
    const v4, 0x7f09047e

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

    .line 672
    return-void

    .line 660
    .end local v1    # "fontSizeNames":[Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 661
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
    .line 1231
    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 1232
    int-to-float v1, p1

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 1233
    .local v0, "adj":F
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/DisplaySettings$7;-><init>(Lcom/android/settings_ex/DisplaySettings;F)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1251
    .end local v0    # "adj":F
    :goto_0
    return-void

    .line 1242
    :cond_0
    new-instance v1, Lcom/android/settings_ex/DisplaySettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/DisplaySettings$8;-><init>(Lcom/android/settings_ex/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 890
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
