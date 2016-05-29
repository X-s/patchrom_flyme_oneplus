.class public Lcom/android/settings_ex/notification/NotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationSettings$Receiver;,
        Lcom/android/settings_ex/notification/NotificationSettings$H;,
        Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
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

.field private static final KEY_INCALL_VIBRATE_WAY:Ljava/lang/String; = "incall_vibrate_way_key"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_OTHER_SOUND:Ljava/lang/String; = "other_sounds"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_REPEAT_INCALLER_UNLIMIT_ENABLE:Ljava/lang/String; = "repeat_incaller_unlimit_enable"

.field private static final KEY_RINGTONE_CATEGORY:Ljava/lang/String; = "ringtone_category"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SPEC_INCALL_SETTINGS:Ljava/lang/String; = "spec_incall_settings"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE_CATEGORY:Ljava/lang/String; = "vibrate_category"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_WHEN_MUTE:Ljava/lang/String; = "vibrate_when_mute"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_ZEN_MODE_CATEGORY:Ljava/lang/String; = "zen_mode_category"

.field private static final KEY_ZEN_SETTINGS:Ljava/lang/String; = "zen_mode"

.field private static final KEY_ZEN_SETTINGS_ENABLE:Ljava/lang/String; = "zen_mode_enable"

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
.field private isSupporthapticsService:Z

.field private mAlarmVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOtherPreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

.field private mRepeatIncallPreference:Landroid/preference/SwitchPreference;

.field private mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mRingRoot:Landroid/preference/PreferenceCategory;

.field private mRingerMode:I

.field private mSecure:Z

.field private mSelectID:I

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

.field private mSmsRingtonePreference:Landroid/preference/Preference;

.field private mSpecIncallPreference:Landroid/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateSelectID:I

.field private mVibrateWhenMute:Landroid/preference/TwoStatePreference;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mViratePerference:Landroid/preference/Preference;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mZenCategory:Landroid/preference/PreferenceCategory;

.field private mZenModeEnablePreference:Landroid/preference/SwitchPreference;

.field private mZenScreen:Landroid/preference/PreferenceScreen;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 264
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 272
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 275
    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$2;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/NotificationSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 283
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$3;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 297
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$4;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 305
    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/NotificationSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    .line 326
    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings_ex/notification/NotificationSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    .line 350
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 1227
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$12;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void

    .line 305
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 326
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->isSupporthapticsService:Z

    .line 178
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    .line 179
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    .line 180
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    .line 181
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 213
    iput v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 254
    iput v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    .line 732
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$8;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1175
    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenMute()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateZenModeEnable()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVolumeSeekbarStatus()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/settings_ex/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    return p1
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/notification/NotificationSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateSpecIncallSettingStatus(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/settings_ex/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/notification/NotificationSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateIncallVibrate(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 940
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 935
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 629
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 631
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 632
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 634
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 635
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 644
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
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
    .line 361
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
    .line 365
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 366
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

    .line 888
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    .line 889
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 890
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 896
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 902
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 903
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$11;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/DropDownPreference;->setCallback(Lcom/android/settings_ex/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 851
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 852
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 853
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 860
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$10;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 719
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 720
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 721
    const-string v0, "RING"

    const-string v1, "+++++++++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 725
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 726
    return-void
.end method

.method private initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 681
    const-string v0, "vibrate_when_mute"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 683
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found : vibrate_when_mute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 688
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenMute()V

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$7;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 819
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 820
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 821
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 830
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 831
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$9;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "oem_repeate_incall_unlimite"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1265
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_three_key_define"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1267
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_agree_incall_people"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    .line 1268
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateSpecIncallSettingStatus(I)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_notification_vibrate_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    .line 1271
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateIncallVibrate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :goto_2
    return-void

    :cond_0
    move v2, v0

    .line 1263
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1265
    goto :goto_1

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 585
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V

    .line 586
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 587
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 730
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 947
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 949
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 963
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 952
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 953
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 954
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ac6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 957
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

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

.method private updateEffectsSuppressor()V
    .locals 6

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 616
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 617
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 618
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    if-eqz v1, :cond_1

    .line 619
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v2, 0x10406e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private updateIncallVibrate(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 1308
    const-string v0, ""

    .line 1310
    .local v0, "summary":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1334
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mViratePerference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mViratePerference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1338
    :cond_0
    return-void

    .line 1312
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    goto :goto_0

    .line 1315
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1316
    goto :goto_0

    .line 1318
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1322
    goto :goto_0

    .line 1324
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1325
    goto :goto_0

    .line 1327
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    goto :goto_0

    .line 1330
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1310
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
    .end packed-switch
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 923
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 932
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 927
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 928
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f090ab6

    :goto_2
    iput v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 931
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 927
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 928
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f090ab4

    goto :goto_2

    :cond_4
    const v2, 0x7f090ab5

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 874
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 883
    :goto_0
    return-void

    .line 878
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 878
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080326

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 604
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVolumeSeekbarStatus()V

    .line 605
    return-void

    .line 598
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080327

    goto :goto_0

    :cond_1
    const v0, 0x1080325

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 609
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 611
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 778
    if-nez p0, :cond_1

    .line 779
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    :goto_0
    return-object v7

    .line 782
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 783
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 786
    const v0, 0x10404fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 788
    :cond_2
    const/4 v6, 0x0

    .line 790
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 798
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 799
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 800
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 808
    :cond_4
    if-eqz v6, :cond_0

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 794
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 803
    :catch_0
    move-exception v0

    .line 808
    if-eqz v6, :cond_0

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 805
    :catch_1
    move-exception v0

    .line 808
    if-eqz v6, :cond_0

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 808
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 971
    if-nez p0, :cond_0

    .line 972
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_0
    return-object v1

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 977
    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 978
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_1
    const v0, 0x10404fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 980
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 981
    const v0, 0x10404fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_1
    move-object v1, v7

    .line 1008
    goto :goto_0

    .line 983
    :cond_3
    const/4 v6, 0x0

    .line 985
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 993
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 994
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 995
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1003
    :cond_5
    if-eqz v6, :cond_2

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 989
    :cond_6
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 990
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 998
    :catch_0
    move-exception v0

    .line 1003
    if-eqz v6, :cond_2

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1000
    :catch_1
    move-exception v0

    .line 1003
    if-eqz v6, :cond_2

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1003
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private updateSpecIncallSettingStatus(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 1285
    const-string v0, ""

    .line 1287
    .local v0, "summary":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1300
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1304
    :cond_0
    return-void

    .line 1289
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1290
    goto :goto_0

    .line 1292
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    goto :goto_0

    .line 1295
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateVibrateWhenMute()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 707
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 843
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

.method private updateVolumeSeekbarStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1488
    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_three_key_define"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setSeekBarStatus(Z)V

    .line 1489
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_three_key_define"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1493
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1488
    goto :goto_0

    :cond_2
    move v2, v1

    .line 1490
    goto :goto_1
.end method

.method private updateZenModeEnable()V
    .locals 0

    .prologue
    .line 1478
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x1080326

    const/4 v11, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 375
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 376
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    .line 377
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    .line 379
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 381
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_0

    .line 382
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 385
    :cond_0
    const v8, 0x7f060032

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->root:Landroid/preference/PreferenceScreen;

    .line 395
    const-string v8, "ringtone_category"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingRoot:Landroid/preference/PreferenceCategory;

    .line 396
    const-string v8, "other_sounds"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOtherPreference:Landroid/preference/Preference;

    .line 405
    const-string v8, "vibrate_category"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 410
    .local v7, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v8, "sound"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 411
    .local v6, "sound":Landroid/preference/PreferenceCategory;
    const-string v8, "media_volume"

    const/4 v9, 0x3

    const v10, 0x1080329

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mMediaVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 413
    const-string v8, "alarm_volume"

    const/4 v9, 0x4

    const v10, 0x108031a

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAlarmVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 415
    iget-boolean v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v8, :cond_1

    .line 416
    const-string v8, "ring_volume"

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9, v12}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 419
    const-string v8, "notification_volume"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mOtherPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingRoot:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 437
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 439
    .local v4, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 440
    invoke-direct {p0, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 442
    const-string v8, "manage_notification_access"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 443
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 444
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    .line 445
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 452
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mMediaVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAlarmVolumePreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 465
    .local v5, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 421
    .end local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "notification":Landroid/preference/PreferenceCategory;
    .end local v5    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_1
    const-string v8, "notification_volume"

    const/4 v9, 0x5

    invoke-direct {p0, v8, v9, v12}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 424
    const-string v8, "ring_volume"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 468
    .restart local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "notification":Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v8, "zen_mode_category"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenCategory:Landroid/preference/PreferenceCategory;

    .line 469
    const-string v8, "zen_mode"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenScreen:Landroid/preference/PreferenceScreen;

    .line 471
    const-string v8, "spec_incall_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    .line 472
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSpecIncallPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 474
    const-string v8, "zen_mode_enable"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenModeEnablePreference:Landroid/preference/SwitchPreference;

    .line 475
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenModeEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 481
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenModeEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 484
    const-string v8, "repeat_incaller_unlimit_enable"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    .line 485
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 493
    const-string v8, "incall_vibrate_way_key"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mViratePerference:Landroid/preference/Preference;

    .line 494
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mViratePerference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 496
    iget-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->root:Landroid/preference/PreferenceScreen;

    const-string v9, "message_ringtone"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    .line 504
    invoke-direct {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V

    .line 505
    invoke-direct {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 514
    iput-boolean v11, p0, Lcom/android/settings_ex/notification/NotificationSettings;->isSupporthapticsService:Z

    .line 515
    iget-boolean v8, p0, Lcom/android/settings_ex/notification/NotificationSettings;->isSupporthapticsService:Z

    if-eqz v8, :cond_3

    .line 531
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_h_system_cts_vertion"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, "h_zen_mode":I
    if-nez v1, :cond_4

    .line 537
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    :goto_3
    return-void

    .line 521
    .end local v1    # "h_zen_mode":I
    :cond_3
    const-string v8, "cate_incall_vibrate_way_key"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 540
    .restart local v1    # "h_zen_mode":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 576
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 577
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 579
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v8, 0x1040009

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1347
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "spec_incall_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1349
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090059

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSelectID:I

    new-instance v4, Lcom/android/settings_ex/notification/NotificationSettings$15;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/NotificationSettings$15;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings_ex/notification/NotificationSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/NotificationSettings$14;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/NotificationSettings$13;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1460
    :cond_0
    :goto_0
    return v1

    .line 1395
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zen_mode_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1400
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_zen_mode_enable"

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenModeEnablePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1402
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "repeat_incaller_unlimit_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1404
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_repeate_incall_unlimite"

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRepeatIncallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1406
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "incall_vibrate_way_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09005f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090060

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I

    new-instance v4, Lcom/android/settings_ex/notification/NotificationSettings$18;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/notification/NotificationSettings$18;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings_ex/notification/NotificationSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/NotificationSettings$17;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$16;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/NotificationSettings$16;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 549
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 556
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->initView()V

    .line 559
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 560
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 561
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 562
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 564
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 565
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    goto :goto_0

    .line 571
    :cond_0
    return-void
.end method
