.class public Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilityAdvanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings$AccessibilitySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final ACC_MODE_ENABLE_KEY:Ljava/lang/String; = "accessibility_mode_enable"

.field private static final BACK_COVER_TOPICS_KEY:Ljava/lang/String; = "back_cover_topics"

.field private static final BLACK_SCREEN_GESTURES_KEY:Ljava/lang/String; = "black_screen_gestures_settings"

.field private static final FINGER_SENSOR_SETTINGS_KEY:Ljava/lang/String; = "finger_sensor_settings"

.field private static final LEFT_BUTTON_CUSTOMIZATION_KEY:Ljava/lang/String; = "left_button_customization"

.field private static final MOTION_SENSOR_SETTINGS_KEY:Ljava/lang/String; = "motion_sensor_settings"

.field private static final NIGHT_MODE_ENABLE_KEY:Ljava/lang/String; = "night_mode_enable"

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field private static final OTG_READ_KEY:Ljava/lang/String; = "otg_read_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SHUTDOWN_ALARM_CLOCK_KEY:Ljava/lang/String; = "shutdown_alarm_clock_enable"

.field private static final SYSTEM_ROOT_KEY:Ljava/lang/String; = "system_category"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"


# instance fields
.field private isOTGEnable:Ljava/lang/String;

.field private isSupportBlackGesture:Z

.field private isSupportKeyCustomize:Z

.field private isSupportOTG:Z

.field private isSupportTimerWakeup:Z

.field private mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

.field private mBatteryChargingLedPlus:I

.field private mBatteryLowLedPlus:I

.field private mBlackScreenPreference:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mKeyCustomizationPreference:Landroid/preference/Preference;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mNightModeEnable:I

.field private mNightModePreference:Landroid/preference/SwitchPreference;

.field private mNotificationLightPlus:I

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/preference/SwitchPreference;

.field private mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

.field private mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings$AccessibilitySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings$AccessibilitySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportBlackGesture:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportKeyCustomize:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportTimerWakeup:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportOTG:Z

    .line 89
    const-string v0, "false"

    iput-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isOTGEnable:Ljava/lang/String;

    .line 399
    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 133
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 135
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 140
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 137
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "ServiceManager"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateInitUIStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightEnable:I

    .line 274
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotifyLightEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_night_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNightModeEnable:I

    .line 280
    return-void
.end method

.method private updateNotifyLightStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to checked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_charging"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "want to unchecked !"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

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

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "mNotify":Z
    const/4 v0, 0x0

    .line 162
    .local v0, "mNight":Z
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->updateInitUIStatus()V

    .line 164
    const-string v2, "night_mode_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNightModePreference:Landroid/preference/SwitchPreference;

    .line 165
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNightModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNightModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_acc_night_mode"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNightModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    const-string v2, "shutdown_alarm_clock_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

    .line 173
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_shutdown_ring"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    const-string v2, "back_cover_topics"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "oem_acc_backgap_theme"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 194
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    .line 197
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    const-string v2, "notify_light_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightEnable:I

    if-nez v2, :cond_6

    move v1, v3

    .line 211
    :goto_3
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

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mNotifyLightPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 215
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportBlackGesture:Z

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportKeyCustomize:Z

    if-nez v2, :cond_1

    .line 225
    const-string v2, "left_button_customization"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 227
    const-string v2, "preference_key_divider_line"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 231
    :cond_1
    const-string v2, "preference_key_divider_line"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 233
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportTimerWakeup:Z

    if-nez v2, :cond_2

    .line 236
    const-string v2, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 238
    const-string v2, "preference_divider_timer_line"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 244
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportOTG:Z

    if-nez v2, :cond_7

    .line 246
    const-string v2, "otg_read_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->removePreference(Ljava/lang/String;)V

    .line 267
    :goto_4
    return-void

    :cond_3
    move v2, v4

    .line 166
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 175
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 190
    goto/16 :goto_2

    :cond_6
    move v1, v4

    .line 209
    goto :goto_3

    .line 250
    :cond_7
    const-string v2, "persist.sys.oem.otg_support"

    const-string v5, "false"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isOTGEnable:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isOTGEnable:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 253
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4

    .line 255
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mContext:Landroid/content/Context;

    .line 102
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->addPreferencesFromResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->root:Landroid/preference/PreferenceScreen;

    const-string v2, "finger_sensor_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    const-string v1, "black_screen_gestures_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBlackScreenPreference:Landroid/preference/PreferenceScreen;

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.blackScreenGesture.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportBlackGesture:Z

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.keyDefine.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportKeyCustomize:Z

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.timePoweroffWakeup.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportTimerWakeup:Z

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.otgSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->isSupportOTG:Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->updateUIView()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 129
    .local v0, "mountService":Landroid/os/storage/IMountService;
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 333
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "onPreferenceClick..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notify_light_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->updateNotifyLightStatus()V

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "night_mode_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shutdown_alarm_clock_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_shutdown_ring"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mShutdownAlarmClockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "back_cover_topics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_backgap_theme"

    iget-object v4, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mBackCoverTopicsPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 366
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "otg_read_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mOtgReadEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    const-string v0, "persist.sys.oem.otg_support"

    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_6
    const-string v0, "persist.sys.oem.otg_support"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/accessibility/AccessibilityAdvanceSettings;->mMountService:Landroid/os/storage/IMountService;

    const-string v2, "/storage/UDiskA"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_7
    move v1, v0

    .line 390
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 155
    return-void
.end method
