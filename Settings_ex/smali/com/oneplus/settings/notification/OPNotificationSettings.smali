.class public Lcom/oneplus/settings/notification/OPNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$H;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOCK_AUDIO_MEDIA:I = 0x0

.field private static final DEFAULT_EMERGENCY_TONE:I = 0x0

.field private static final DEFAULT_ON:I = 0x1

.field private static final DOCK_AUDIO_MEDIA_DISABLED:I = 0x0

.field private static final DOCK_AUDIO_MEDIA_ENABLED:I = 0x1

.field private static final EMERGENCY_TONE_ALERT:I = 0x1

.field private static final EMERGENCY_TONE_SILENT:I = 0x0

.field private static final EMERGENCY_TONE_VIBRATE:I = 0x2

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_DOCKING_SOUNDS:Ljava/lang/String; = "docking_sounds"

.field private static final KEY_DOCK_AUDIO_MEDIA:Ljava/lang/String; = "dock_audio_media"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_MUTE:Ljava/lang/String; = "mute"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_ONEPLUS_TOUCH_SOUNDS:Ljava/lang/String; = "oneplus_touch_sounds"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONE_CATEGORY:Ljava/lang/String; = "ringtone_category"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE_CATEGORY:Ljava/lang/String; = "vibrate_category"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_WHEN_MUTE:Ljava/lang/String; = "vibrate_when_mute"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final MMS_NOTIFICATION_SOUND:Ljava/lang/String; = "mms_notification"

.field private static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_sound"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

.field private static final RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final SMS_RINGTONE:Ljava/lang/String; = "sms_ringtone"

.field private static final TAG:Ljava/lang/String; = "NotificationSettings"


# instance fields
.field private isVisible:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

.field private mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMeidaPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

.field private mMuteSetting:Landroid/preference/TwoStatePreference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

.field private mRingRoot:Landroid/preference/PreferenceCategory;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;

.field private final mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

.field private mSmsRingtonePreference:Landroid/preference/Preference;

.field private mSoundDirectPreference:Landroid/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchPreference:Landroid/preference/SwitchPreference;

.field private mVibrateWhenMute:Landroid/preference/TwoStatePreference;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 194
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 202
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 205
    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/notification/OPNotificationSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 213
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 232
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 240
    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/notification/OPNotificationSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    .line 261
    new-instance v3, Lcom/oneplus/settings/notification/OPNotificationSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/notification/OPNotificationSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    .line 285
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 1504
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$15;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$15;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void

    .line 240
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 261
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 102
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    .line 103
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    .line 104
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;

    .line 105
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    .line 106
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->isVisible:Z

    .line 879
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$12;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1475
    return-void
.end method

.method private MakeSoundEffects()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1384
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1386
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTouchPreference:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTouchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1392
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/settings/notification/OPNotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1802(Lcom/oneplus/settings/notification/OPNotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/settings/notification/OPNotificationSettings;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVolumes(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/settings/notification/OPNotificationSettings;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->setMediaVolume(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/settings/notification/OPNotificationSettings;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->restoreMediaVolume(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenMute()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isShowPhoneSummary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateSeekbar()V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->MakeSoundEffects()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPNotificationSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->onMuteChanged(Z)V

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getRingtoneFromUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "ringtoneUri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 960
    const/4 v6, 0x0

    .line 962
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 970
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 971
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 980
    :cond_1
    if-eqz v6, :cond_2

    .line 981
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, p2

    .line 983
    .end local p2    # "summary":Ljava/lang/CharSequence;
    .local v7, "summary":Ljava/lang/CharSequence;
    :goto_1
    return-object v7

    .line 966
    .end local v7    # "summary":Ljava/lang/CharSequence;
    .restart local p2    # "summary":Ljava/lang/CharSequence;
    :cond_3
    :try_start_1
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 980
    if-eqz v6, :cond_4

    .line 981
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, p2

    .line 983
    .end local p2    # "summary":Ljava/lang/CharSequence;
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    goto :goto_1

    .line 977
    .end local v7    # "summary":Ljava/lang/CharSequence;
    .restart local p2    # "summary":Ljava/lang/CharSequence;
    :catch_1
    move-exception v0

    .line 980
    if-eqz v6, :cond_5

    .line 981
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, p2

    .line 983
    .end local p2    # "summary":Ljava/lang/CharSequence;
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    goto :goto_1

    .line 980
    .end local v7    # "summary":Ljava/lang/CharSequence;
    .restart local p2    # "summary":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 981
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v7, p2

    .line 983
    .end local p2    # "summary":Ljava/lang/CharSequence;
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 630
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 632
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 633
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 635
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 636
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 645
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 301
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v4, 0x7f090ab6

    const v3, 0x7f090ab5

    const v2, 0x7f090ab4

    .line 1036
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    .line 1037
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 1038
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 1044
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 1050
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateLockscreenNotifications()V

    .line 1051
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$14;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$14;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initMuteSettings(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 704
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    .line 705
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 706
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found : mute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 712
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateMuteSetting()V

    .line 713
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$11;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$11;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 999
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 1000
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 1001
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1008
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updatePulse()V

    .line 1009
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$13;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$13;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 866
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 867
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 871
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 872
    return-void
.end method

.method private initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 305
    const-string v0, "vibrate_when_mute"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_1

    .line 307
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found : vibrate_when_mute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenMute()V

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$7;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$7;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeStageKey.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 343
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenRinging()V

    .line 355
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$8;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$8;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 587
    .local v0, "volumePref":Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 588
    invoke-virtual {v0, p2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 589
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    return-object v0
.end method

.method private isShowPhoneSummary()Z
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OpRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    :cond_0
    const/4 v0, 0x1

    .line 1414
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 875
    const-string v0, "summary"

    const-string v1, "lookupRingtoneNames : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method private onMuteChanged(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 685
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 694
    .local v0, "val":Z
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1095
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 1096
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 1097
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 1098
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1111
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 1100
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 1101
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 1102
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ac6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100008

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private restoreMediaVolume(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 846
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 849
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 850
    .local v1, "volume":I
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 851
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volume_ring"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v1    # "volume":I
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setMediaVolume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 838
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 842
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 843
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 617
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 618
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    :goto_0
    return-void

    .line 619
    :cond_0
    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 620
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 621
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x10406e2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 626
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 621
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 1075
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1076
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090ab6

    :goto_2
    iput v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreenSelectedValue:I

    .line 1079
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    iget v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1075
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1076
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f090ab4

    goto :goto_2

    :cond_4
    const v2, 0x7f090ab5

    goto :goto_2
.end method

.method private updateMuteSetting()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 830
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mute"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1026
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1026
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 4

    .prologue
    const v0, 0x7f0200e1

    .line 596
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 607
    return-void

    .line 596
    :cond_1
    iget v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const v0, 0x7f0200e0

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 611
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    iput v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    .line 613
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const v4, 0x10404fd

    .line 923
    if-nez p0, :cond_0

    .line 924
    const-string v3, "NotificationSettings"

    const-string v4, "Unable to update ringtone name, no context provided"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-object v0

    .line 928
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 930
    .local v0, "ringtoneUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, "summary":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 933
    const v3, 0x10404fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v0, v1

    .line 954
    goto :goto_0

    .line 936
    :cond_3
    invoke-static {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getRingtoneFromUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 937
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 938
    const-string v3, "sms_ringtone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getRingtoneFromUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 941
    :cond_4
    const-string v3, "ringtone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 942
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getRingtoneFromUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 945
    :cond_5
    const-string v3, "mms_notification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getRingtoneFromUri(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 950
    :cond_6
    const-string v3, "ringXX"

    const-string v4, "zll updateRingtoneName ringtone type 9999"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSeekbar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1309
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_three_key_define"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1311
    .local v0, "threeKeyMode":I
    if-ne v3, v0, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->changeLowProgress(F)V

    .line 1320
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMeidaPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateStreamVolume()V

    .line 1321
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->updateStreamVolume()V

    .line 1322
    return-void

    .line 1318
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->changeLowProgress(F)V

    goto :goto_0
.end method

.method private updateThreeStageStatus(Z)V
    .locals 6
    .param p1, "val"    # Z

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_zen_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1424
    .local v2, "mZenmode":I
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "oem.threeStageKey.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1427
    if-eqz p1, :cond_2

    .line 1429
    const/4 v0, 0x1

    .line 1430
    .local v0, "mStatus":I
    if-nez v2, :cond_1

    .line 1432
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1433
    .local v1, "mThreeIntent":Landroid/content/Intent;
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const-string v3, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1472
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1439
    .restart local v0    # "mStatus":I
    :cond_1
    const/4 v0, 0x2

    .line 1441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1442
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    const-string v3, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1444
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1452
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_3

    .line 1453
    const/4 v0, 0x3

    .line 1455
    .restart local v0    # "mStatus":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1456
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const-string v3, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1460
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x2

    .line 1462
    .restart local v0    # "mStatus":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1463
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    const-string v3, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1465
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVibrateWhenMute()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_vibrate_under_silent"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 994
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_vibrate_when_incall"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateVolumes(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    return-void
.end method


# virtual methods
.method public getShowStatus()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->isVisible:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x1080326

    const/4 v10, 0x1

    .line 379
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    .line 382
    iput-boolean v10, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->isVisible:Z

    .line 384
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 386
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 387
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    .line 388
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    iput-boolean v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSecure:Z

    .line 390
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 391
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v11, "vibrator"

    invoke-virtual {v9, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 392
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-nez v9, :cond_0

    .line 393
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 396
    :cond_0
    const v9, 0x7f06003e

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->addPreferencesFromResource(I)V

    .line 402
    const-string v9, "sound_direct"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    .line 403
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    new-instance v11, Lcom/oneplus/settings/notification/OPNotificationSettings$9;

    invoke-direct {v11, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$9;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 424
    const-string v9, "oneplus_touch_sounds"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTouchPreference:Landroid/preference/SwitchPreference;

    .line 426
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "sound_effects_enabled"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 427
    .local v1, "def":I
    iget-object v11, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTouchPreference:Landroid/preference/SwitchPreference;

    if-ne v1, v10, :cond_2

    move v9, v10

    :goto_0
    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 428
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTouchPreference:Landroid/preference/SwitchPreference;

    new-instance v11, Lcom/oneplus/settings/notification/OPNotificationSettings$10;

    invoke-direct {v11, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$10;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->root:Landroid/preference/PreferenceScreen;

    .line 455
    const-string v9, "ringtone_category"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingRoot:Landroid/preference/PreferenceCategory;

    .line 459
    const-string v9, "sound"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 460
    .local v7, "sound":Landroid/preference/PreferenceCategory;
    const-string v9, "media_volume"

    const/4 v11, 0x3

    const v12, 0x1080329

    invoke-direct {p0, v9, v11, v12}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMeidaPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 462
    const-string v9, "alarm_volume"

    const/4 v11, 0x4

    const v12, 0x108031a

    invoke-direct {p0, v9, v11, v12}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 464
    iget-boolean v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    if-eqz v9, :cond_3

    .line 465
    const-string v9, "ring_volume"

    const/4 v11, 0x2

    invoke-direct {p0, v9, v11, v13}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 468
    const-string v9, "notification_volume"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    :goto_1
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->root:Landroid/preference/PreferenceScreen;

    const-string v11, "message_ringtone"

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    .line 478
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingRoot:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 479
    invoke-direct {p0, v7}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 486
    invoke-direct {p0, v7}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initMuteSettings(Landroid/preference/PreferenceCategory;)V

    .line 488
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v11, "oem.threeStageKey.support"

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v10, :cond_1

    .line 490
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    if-eqz v9, :cond_1

    .line 491
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    :cond_1
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 500
    .local v4, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 501
    invoke-direct {p0, v4}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 503
    const-string v9, "manage_notification_access"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 504
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->refreshNotificationListeners()V

    .line 505
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V

    .line 506
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    .line 513
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 514
    .local v5, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 427
    .end local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "notification":Landroid/preference/PreferenceCategory;
    .end local v5    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    .end local v7    # "sound":Landroid/preference/PreferenceCategory;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 470
    .restart local v7    # "sound":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v9, "notification_volume"

    const/4 v11, 0x5

    invoke-direct {p0, v9, v11, v13}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 473
    const-string v9, "ring_volume"

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 516
    .restart local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "notification":Landroid/preference/PreferenceCategory;
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "zen_mode"

    invoke-virtual {p0, v10}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    const-string v9, "vibrate_category"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 520
    .local v8, "vibrate":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v8}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V

    .line 521
    invoke-direct {p0, v8}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 523
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 527
    .local v6, "root":Landroid/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v10, "com.oneplus.dirac.simplemanager"

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 529
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "oem.direct.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 542
    :cond_5
    :goto_3
    return-void

    .line 532
    :cond_6
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 533
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 537
    :cond_7
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_5

    .line 538
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 570
    iput-boolean v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->isVisible:Z

    .line 571
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 572
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->register(Z)V

    .line 573
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;->register(Z)V

    .line 574
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->register(Z)V

    .line 575
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 547
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 548
    iput-boolean v3, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->isVisible:Z

    .line 549
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->refreshNotificationListeners()V

    .line 550
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->lookupRingtoneNames()V

    .line 551
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsObserver;->register(Z)V

    .line 552
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;->register(Z)V

    .line 553
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->register(Z)V

    .line 554
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    .line 555
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    .line 556
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    .line 557
    .local v1, "volumePref":Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 565
    .end local v1    # "volumePref":Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    :cond_0
    return-void
.end method
