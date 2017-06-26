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
    .line 461
    new-instance v0, Lcom/oneplus/settings/OPAdvanceDevSettings$AccessibilitySearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPAdvanceDevSettings$AccessibilitySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPAdvanceDevSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    .line 92
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportKeyCustomize:Z

    .line 93
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    .line 94
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    .line 95
    const-string v0, "false"

    iput-object v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    .line 463
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 217
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 218
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 219
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 224
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 221
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ServiceManager"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 448
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

    .line 453
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateInitUIStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightEnable:I

    .line 324
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

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_night_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNightModeEnable:I

    .line 330
    return-void
.end method

.method private updateNotifyLightStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to checked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    :goto_0
    return-void

    .line 353
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to unchecked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
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

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "mNotify":Z
    const/4 v0, 0x0

    .line 267
    .local v0, "mNight":Z
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateInitUIStatus()V

    .line 269
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    .line 270
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    const-string v2, "notify_light_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    .line 273
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 275
    iget v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightEnable:I

    if-nez v2, :cond_2

    move v1, v3

    .line 277
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

    .line 279
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    if-nez v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_0
    const-string v2, "preference_key_divider_line"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 289
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    if-nez v2, :cond_1

    .line 292
    const-string v2, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 294
    const-string v2, "preference_divider_timer_line"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    if-nez v2, :cond_3

    .line 302
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPAdvanceDevSettings;->removePreference(Ljava/lang/String;)V

    .line 317
    :goto_1
    return-void

    :cond_2
    move v1, v4

    .line 275
    goto :goto_0

    .line 306
    :cond_3
    const-string v2, "persist.sys.oem.otg_support"

    const-string v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isOTGEnable:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 309
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    .line 134
    const v5, 0x7f080033

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->addPreferencesFromResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->root:Landroid/preference/PreferenceScreen;

    .line 138
    const-string v5, "black_screen_gestures_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    .line 140
    const-string v5, "left_button_customization"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mLeftButtonCustomizationPreference:Landroid/preference/PreferenceScreen;

    .line 141
    const-string v5, "advance_dev_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 144
    .local v1, "advancedevsettingsCategory":Landroid/preference/PreferenceGroup;
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.blackScreenGesture.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportBlackGesture:Z

    .line 146
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.keyDefine.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportKeyCustomize:Z

    .line 148
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.timePoweroffWakeup.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportTimerWakeup:Z

    .line 150
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.otgSwitch.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportOTG:Z

    .line 152
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "oem.button.define.not.support"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    .line 155
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateUIView()V

    .line 160
    iget-boolean v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->isSupportButtonDefine:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 161
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mLeftButtonCustomizationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 177
    .local v2, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    .line 178
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    const-string v5, "advance_dev_others_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 187
    .local v0, "advancedevoterssettingsCategory":Landroid/preference/PreferenceGroup;
    const-string v5, "user_enjoy_plan"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    .line 188
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    const-string v5, "user"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 197
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "development"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 200
    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v6, "show"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 204
    .local v3, "showDev":Z
    if-eqz v3, :cond_1

    const-string v5, "no_debugging_features"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    :cond_1
    const-string v5, "development_settings"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPAdvanceDevSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 376
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

    .line 383
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_enjoy_plan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_join_user_plan_settings"

    iget-object v5, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mUserPlanPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "INTENT_START_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 441
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 389
    goto :goto_0

    .line 403
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 404
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "INTENT_STOP_ODM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 411
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notify_light_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->updateNotifyLightStatus()V

    goto :goto_1

    .line 417
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "otg_read_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 420
    const-string v1, "persist.sys.oem.otg_support"

    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_5
    const-string v1, "persist.sys.oem.otg_support"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string v3, "/storage/UDiskA"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 428
    :catch_0
    move-exception v1

    goto :goto_1

    .line 434
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    if-ne v3, p1, :cond_7

    .line 436
    invoke-direct {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_1

    :cond_7
    move v2, v1

    .line 441
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 242
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

    .line 249
    const/16 v2, 0x1a

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/settings/OPAdvanceDevSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "incall_power_button_behavior"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 255
    .local v0, "incallPowerBehavior":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v1, v4

    .line 256
    .local v1, "powerButtonEndsCall":Z
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/OPAdvanceDevSettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 260
    .end local v0    # "incallPowerBehavior":I
    .end local v1    # "powerButtonEndsCall":Z
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 242
    goto :goto_0

    .restart local v0    # "incallPowerBehavior":I
    :cond_2
    move v1, v3

    .line 255
    goto :goto_1
.end method
