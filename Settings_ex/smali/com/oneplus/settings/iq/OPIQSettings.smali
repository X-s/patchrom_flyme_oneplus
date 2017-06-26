.class public Lcom/oneplus/settings/iq/OPIQSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPIQSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final BLACK_SCREEN_SETTINGS_KEY:Ljava/lang/String; = "black_screen_setting_key"

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field private static final DOUBLE_CLICK_LIGHT_SCREEN_KEY:Ljava/lang/String; = "double_click_light_screen_key"

.field private static final DRAW_O_START_CAMERA_KEY:Ljava/lang/String; = "draw_o_start_camera_key"

.field private static final FLASH_LIGHT_KEY:Ljava/lang/String; = "open_light_device_key"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final MUSCI_CONTROL_KEY:Ljava/lang/String; = "music_control_key"

.field private static final MUSIC_CONTROL_NEXT_KEY:Ljava/lang/String; = "music_control_next_key"

.field private static final MUSIC_CONTROL_PAUSE_KEY:Ljava/lang/String; = "music_control_pause_key"

.field private static final MUSIC_CONTROL_PREV_KEY:Ljava/lang/String; = "music_control_prev_key"

.field private static final MUSIC_CONTROL_START_KEY:Ljava/lang/String; = "music_control_start_key"

.field private static MUSIC_ROOT_KEY:Ljava/lang/String; = null

.field private static final ROTATION_SILENT_KEY:Ljava/lang/String; = "rotation_silent_enable"

.field private static STARTUP_ROOT_KEY:Ljava/lang/String; = null

.field private static final THREE_SCEENTSHOTS_KEY:Ljava/lang/String; = "three_screenshots_enable"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"


# instance fields
.field private isDoubleClickEnable:I

.field private isFlashlightEnable:I

.field private isMusicControlEnable:I

.field private isMusicNextEnable:I

.field private isMusicPauseEnable:I

.field private isMusicPlayEnable:I

.field private isMusicPrevEnable:I

.field private isStartUpCameraEnable:I

.field private isSupportThreeScrrenShot:Z

.field private mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

.field private mBlackSettingValues:I

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraPerference:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

.field private mFlashLightPreference:Landroid/preference/SwitchPreference;

.field private mMusicNextPreference:Landroid/preference/SwitchPreference;

.field private mMusicPausePreference:Landroid/preference/SwitchPreference;

.field private mMusicPreference:Landroid/preference/SwitchPreference;

.field private mMusicPrefererce:Landroid/preference/PreferenceCategory;

.field private mMusicPrevPreference:Landroid/preference/SwitchPreference;

.field private mMusicStartPreference:Landroid/preference/SwitchPreference;

.field private mRotationSilent:Landroid/preference/SwitchPreference;

.field private mStartUpPreferece:Landroid/preference/PreferenceCategory;

.field private mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

.field private mTimerShutdownPreference:Lcom/oneplus/widget/preference/OPPreference;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "quick_startup"

    sput-object v0, Lcom/oneplus/settings/iq/OPIQSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    .line 42
    const-string v0, "music_control"

    sput-object v0, Lcom/oneplus/settings/iq/OPIQSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isSupportThreeScrrenShot:Z

    return-void
.end method

.method private get(II)I
    .locals 1
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 353
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    and-int/2addr v0, p1

    shr-int/2addr v0, p2

    return v0
.end method

.method private getConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    .line 341
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isFlashlightEnable:I

    .line 342
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPlayEnable:I

    .line 343
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPauseEnable:I

    .line 344
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicNextEnable:I

    .line 345
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPrevEnable:I

    .line 346
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicControlEnable:I

    .line 347
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isStartUpCameraEnable:I

    .line 348
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isDoubleClickEnable:I

    .line 350
    return-void
.end method

.method private initBlackScreenView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    const-string v0, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mTimerShutdownPreference:Lcom/oneplus/widget/preference/OPPreference;

    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mTimerShutdownPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mTimerShutdownPreference:Lcom/oneplus/widget/preference/OPPreference;

    const v3, 0x7f0c0290

    invoke-virtual {v0, v3}, Lcom/oneplus/widget/preference/OPPreference;->setSummary(I)V

    .line 171
    :goto_0
    sget-object v0, Lcom/oneplus/settings/iq/OPIQSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mStartUpPreferece:Landroid/preference/PreferenceCategory;

    .line 172
    sget-object v0, Lcom/oneplus/settings/iq/OPIQSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrefererce:Landroid/preference/PreferenceCategory;

    .line 174
    const-string v0, "draw_o_start_camera_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraPerference:Landroid/preference/SwitchPreference;

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraPerference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    const-string v0, "double_click_light_screen_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    const-string v0, "music_control_prev_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    const-string v0, "music_control_next_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    .line 184
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    const-string v0, "music_control_start_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    const-string v0, "music_control_pause_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    const-string v0, "open_light_device_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrefererce:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    invoke-direct {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getConfig()V

    .line 200
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraPerference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isStartUpCameraEnable:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 202
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isDoubleClickEnable:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 205
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPrevEnable:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 207
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicNextEnable:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 209
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPlayEnable:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isMusicPauseEnable:I

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isFlashlightEnable:I

    if-nez v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mTimerShutdownPreference:Lcom/oneplus/widget/preference/OPPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/preference/OPPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_1

    :cond_2
    move v0, v2

    .line 202
    goto :goto_2

    :cond_3
    move v0, v2

    .line 205
    goto :goto_3

    :cond_4
    move v0, v2

    .line 207
    goto :goto_4

    :cond_5
    move v0, v2

    .line 209
    goto :goto_5

    :cond_6
    move v0, v2

    .line 211
    goto :goto_6

    :cond_7
    move v1, v2

    .line 214
    goto :goto_7
.end method

.method private initSensorView()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->root:Landroid/preference/PreferenceScreen;

    .line 113
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "oem.swap_key.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->root:Landroid/preference/PreferenceScreen;

    const-string v5, "left_button_customization"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "oem.threeScreenshot.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isSupportThreeScrrenShot:Z

    .line 121
    const-string v2, "three_screenshots_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    .line 123
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    const-string v2, "rotation_silent_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    .line 126
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    const-string v2, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    .line 129
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_acc_sensor_three_finger"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, "isThreeShowEnable":I
    iget-object v5, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 138
    iget-object v5, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_acc_sensor_rotate_silent"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    iget-object v5, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_acc_anti_misoperation_screen"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    const-string v2, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 149
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_6

    :goto_3
    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-boolean v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->isSupportThreeScrrenShot:Z

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 136
    goto :goto_0

    :cond_4
    move v2, v4

    .line 138
    goto :goto_1

    :cond_5
    move v2, v4

    .line 143
    goto :goto_2

    .restart local v1    # "value":I
    :cond_6
    move v4, v3

    .line 152
    goto :goto_3
.end method

.method private set0(II)I
    .locals 4
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 411
    packed-switch p2, :pswitch_data_0

    .line 446
    const/16 v0, 0xff

    .line 450
    .local v0, "mul":I
    :goto_0
    and-int v1, p1, v0

    iput v1, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    iget v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    and-int v1, p1, v0

    return v1

    .line 415
    .end local v0    # "mul":I
    :pswitch_0
    const/16 v0, 0xfe

    .line 416
    .restart local v0    # "mul":I
    goto :goto_0

    .line 419
    .end local v0    # "mul":I
    :pswitch_1
    const/16 v0, 0xfd

    .line 420
    .restart local v0    # "mul":I
    goto :goto_0

    .line 423
    .end local v0    # "mul":I
    :pswitch_2
    const/16 v0, 0xfb

    .line 424
    .restart local v0    # "mul":I
    goto :goto_0

    .line 427
    .end local v0    # "mul":I
    :pswitch_3
    const/16 v0, 0xf7

    .line 428
    .restart local v0    # "mul":I
    goto :goto_0

    .line 431
    .end local v0    # "mul":I
    :pswitch_4
    const/16 v0, 0xef

    .line 432
    .restart local v0    # "mul":I
    goto :goto_0

    .line 435
    .end local v0    # "mul":I
    :pswitch_5
    const/16 v0, 0xdf

    .line 436
    .restart local v0    # "mul":I
    goto :goto_0

    .line 439
    .end local v0    # "mul":I
    :pswitch_6
    const/16 v0, 0xbf

    .line 440
    .restart local v0    # "mul":I
    goto :goto_0

    .line 443
    .end local v0    # "mul":I
    :pswitch_7
    const/16 v0, 0x7f

    .line 444
    .restart local v0    # "mul":I
    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private set1(II)I
    .locals 4
    .param p1, "num"    # I
    .param p2, "index"    # I

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 394
    const/4 v0, 0x0

    .line 398
    .local v0, "mul":I
    :goto_0
    or-int v1, p1, v0

    iput v1, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    iget v3, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    or-int v1, p1, v0

    return v1

    .line 363
    .end local v0    # "mul":I
    :pswitch_0
    const/4 v0, 0x1

    .line 364
    .restart local v0    # "mul":I
    goto :goto_0

    .line 367
    .end local v0    # "mul":I
    :pswitch_1
    const/4 v0, 0x2

    .line 368
    .restart local v0    # "mul":I
    goto :goto_0

    .line 371
    .end local v0    # "mul":I
    :pswitch_2
    const/4 v0, 0x4

    .line 372
    .restart local v0    # "mul":I
    goto :goto_0

    .line 375
    .end local v0    # "mul":I
    :pswitch_3
    const/16 v0, 0x8

    .line 376
    .restart local v0    # "mul":I
    goto :goto_0

    .line 379
    .end local v0    # "mul":I
    :pswitch_4
    const/16 v0, 0x10

    .line 380
    .restart local v0    # "mul":I
    goto :goto_0

    .line 383
    .end local v0    # "mul":I
    :pswitch_5
    const/16 v0, 0x20

    .line 384
    .restart local v0    # "mul":I
    goto :goto_0

    .line 387
    .end local v0    # "mul":I
    :pswitch_6
    const/16 v0, 0x40

    .line 388
    .restart local v0    # "mul":I
    goto :goto_0

    .line 391
    .end local v0    # "mul":I
    :pswitch_7
    const/16 v0, 0x80

    .line 392
    .restart local v0    # "mul":I
    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "require_password_to_decrypt"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0xf0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-direct {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->initBlackScreenView()V

    .line 105
    invoke-direct {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->initSensorView()V

    .line 107
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 326
    iget-object v1, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    .line 327
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 328
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_double_tap_power_gesture_disabled"

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    .end local v0    # "value":Z
    :cond_0
    return v2

    .restart local v0    # "value":Z
    :cond_1
    move v1, v2

    .line 328
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "draw_o_start_camera_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mCameraPerference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    .line 320
    :goto_0
    return v1

    .line 233
    :cond_0
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "double_click_light_screen_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mDoubleLightScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto :goto_0

    .line 243
    :cond_2
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_next_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicNextPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v5}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto :goto_0

    .line 253
    :cond_4
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v5}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto :goto_0

    .line 258
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_prev_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPrevPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v6}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto :goto_0

    .line 263
    :cond_6
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v6}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto :goto_0

    .line 268
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_light_device_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    iget-object v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mFlashLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 271
    iget v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto/16 :goto_0

    .line 273
    :cond_8
    iget v2, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v2, v0}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto/16 :goto_0

    .line 277
    :cond_9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_start_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 279
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicStartPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto/16 :goto_0

    .line 282
    :cond_a
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto/16 :goto_0

    .line 287
    :cond_b
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "music_control_pause_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mMusicPausePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/iq/OPIQSettings;->set1(II)I

    goto/16 :goto_0

    .line 292
    :cond_c
    iget v0, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mBlackSettingValues:I

    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/iq/OPIQSettings;->set0(II)I

    goto/16 :goto_0

    .line 297
    :cond_d
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "three_screenshots_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_sensor_three_finger"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mThreeSwipeScreenShot:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 304
    :cond_f
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rotation_silent_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 306
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_sensor_rotate_silent"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mRotationSilent:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 311
    :cond_11
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 313
    invoke-virtual {p0}, Lcom/oneplus/settings/iq/OPIQSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_anti_misoperation_screen"

    iget-object v4, p0, Lcom/oneplus/settings/iq/OPIQSettings;->mAntiMisOperationTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v1, v0

    .line 320
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 223
    return-void
.end method
