.class public Lcom/oneplus/settings/OPAdvanceDevSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPAdvanceDevSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPAdvanceDevSettings$AccessibilitySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final ACC_MODE_ENABLE_KEY:Ljava/lang/String; = "accessibility_mode_enable"

.field private static final BLACK_SCREEN_GESTURES_KEY:Ljava/lang/String; = "black_screen_gestures_settings"

.field private static final LEFT_BUTTON_CUSTOMIZATION_KEY:Ljava/lang/String; = "left_button_customization"

.field private static final MOTION_SENSOR_SETTINGS_KEY:Ljava/lang/String; = "motion_sensor_settings"

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field private static final OTG_READ_KEY:Ljava/lang/String; = "otg_read_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SYSTEM_ROOT_KEY:Ljava/lang/String; = "system_category"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private isOTGEnable:Ljava/lang/String;

.field private isSupportBlackGesture:Z

.field private isSupportButtonDefine:Z

.field private isSupportKeyCustomize:Z

.field private isSupportOTG:Z

.field private isSupportTimerWakeup:Z

.field private mBatteryChargingLedPlus:I

.field private mBatteryLowLedPlus:I

.field private mBlackScreenPreference:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mKeyCustomizationPreference:Landroid/preference/Preference;

.field private mLeftButtonCustomizationPreference:Landroid/preference/PreferenceScreen;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNightModeEnable:I

.field private mNightModePreference:Landroid/preference/SwitchPreference;

.field private mNotificationLightPlus:I

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/preference/SwitchPreference;

.field private mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

.field private mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

.field private mUserPlanPreference:Landroid/preference/SwitchPreference;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/oneplus/settings/OPAdvanceDevSettings$AccessibilitySearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPAdvanceDevSettings$AccessibilitySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPAdvanceDevSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    .line 90
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportKeyCustomize:Z

    .line 91
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    .line 92
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    .line 93
    const-string v0, "false"

    iput-object v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    .line 461
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 222
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 219
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ServiceManager"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateInitUIStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightEnable:I

    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotifyLightEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_night_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNightModeEnable:I

    .line 328
    return-void
.end method

.method private updateNotifyLightStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to checked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    :goto_0
    return-void

    .line 351
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to unchecked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateUIView()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "mNotify":Z
    const/4 v0, 0x0

    .line 265
    .local v0, "mNight":Z
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateInitUIStatus()V

    .line 267
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    .line 268
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    const-string v2, "notify_light_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    .line 271
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    iget v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightEnable:I

    if-nez v2, :cond_2

    move v1, v3

    .line 275
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNotify : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_0
    const-string v2, "preference_key_divider_line"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 287
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    if-nez v2, :cond_1

    .line 290
    const-string v2, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 292
    const-string v2, "preference_divider_timer_line"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    if-nez v2, :cond_3

    .line 300
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 315
    :goto_1
    return-void

    :cond_2
    move v1, v4

    .line 273
    goto :goto_0

    .line 304
    :cond_3
    const-string v2, "persist.sys.oem.otg_support"

    const-string v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 309
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    .line 132
    const v5, 0x7f060035

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->root:Landroid/preference/PreferenceScreen;

    .line 136
    const-string v5, "black_screen_gestures_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    .line 138
    const-string v5, "left_button_customization"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mLeftButtonCustomizationPreference:Landroid/preference/PreferenceScreen;

    .line 139
    const-string v5, "advance_dev_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 142
    .local v1, "advancedevsettingsCategory":Landroid/preference/PreferenceGroup;
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.blackScreenGesture.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    .line 144
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.keyDefine.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportKeyCustomize:Z

    .line 146
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.timePoweroffWakeup.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    .line 148
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.otgSwitch.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    .line 150
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.button.define.not.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    .line 153
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateUIView()V

    .line 158
    iget-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 159
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mLeftButtonCustomizationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 175
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    .line 176
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const-string v5, "advance_dev_others_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 185
    .local v0, "advancedevoterssettingsCategory":Landroid/preference/PreferenceGroup;
    const-string v5, "user_enjoy_plan"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    .line 186
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 195
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "development"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 198
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v6, "show"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 202
    .local v3, "showDev":Z
    if-eqz v3, :cond_1

    const-string v5, "no_debugging_features"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    :cond_1
    const-string v5, "development_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 381
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_join_user_plan_settings"

    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 439
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 387
    goto :goto_0

    .line 401
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notify_light_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateNotifyLightStatus()V

    goto :goto_1

    .line 415
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "otg_read_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 417
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 418
    const-string v1, "persist.sys.oem.otg_support"

    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 420
    :cond_5
    const-string v1, "persist.sys.oem.otg_support"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string v3, "/storage/UDiskA"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    goto :goto_1

    .line 432
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    if-ne v3, p1, :cond_7

    .line 434
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 439
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 240
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_join_user_plan_settings"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 247
    const/16 v2, 0x1a

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "incall_power_button_behavior"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "incallPowerBehavior":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v1, v4

    .line 254
    .local v1, "powerButtonEndsCall":Z
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 258
    .end local v0    # "incallPowerBehavior":I
    .end local v1    # "powerButtonEndsCall":Z
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 240
    goto :goto_0

    .restart local v0    # "incallPowerBehavior":I
    :cond_2
    move v1, v3

    .line 253
    goto :goto_1
.end method
