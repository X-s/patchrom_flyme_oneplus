.class public Lcom/oneplus/settings/notification/OPNotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$H;,
        Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_OFF:I = 0x0

.field private static final DEFAULT_ON:I = 0x1

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_ONEPLUS_MUTE_MODE:Ljava/lang/String; = "oneplus_silent_mode"

.field private static final KEY_ONEPLUS_RING_MODE:Ljava/lang/String; = "oneplus_ring_pattern"

.field private static final KEY_ONEPLUS_ZEN_MODE:Ljava/lang/String; = "oneplus_zen_mode_settings"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONE_CATEGORY:Ljava/lang/String; = "ringtone_category"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SILENT_MODE_ENABLE:Ljava/lang/String; = "silent_mode_enable"

.field private static final KEY_SMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "oneplus_touch_sounds"

.field private static final KEY_VIBRATE_CATEGORY:Ljava/lang/String; = "vibrate_category"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_WHEN_MUTE:Ljava/lang/String; = "vibrate_when_mute"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final OEM_RING_STATUS:Ljava/lang/String; = "oem_ring_status"

.field private static final OEM_SILENT_STATUS:Ljava/lang/String; = "oem_silent_status"

.field private static final OEM_SWITCH_STATE:Ljava/lang/String; = "switch_state"

.field private static final OEM_THREE_KEY_ACTION:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final OEM_THREE_KEY_SUPPORT:Ljava/lang/String; = "oem.threeStageKey.support"

.field private static final OEM_VIBRATE_INCALL:Ljava/lang/String; = "oem_vibrate_when_incall"

.field private static final OEM_VIBRATE_SILENT:Ljava/lang/String; = "oem_vibrate_under_silent"

.field private static final OEM_ZEN_STATUS:Ljava/lang/String; = "oem_zen_status"

.field private static final ONEPLUS_MUTE_MODE:I = 0x1

.field private static final ONEPLUS_RING_MODE:I = 0x3

.field private static final ONEPLUS_ZEN_MODE:I = 0x2

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_WHEN_SILENT:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE__WHEN_RINGING:Lcom/android/settings_ex/notification/SettingPref;

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final SILENT_STATUS:Ljava/lang/String; = "silent_status"

.field private static final TAG:Ljava/lang/String; = "NotificationSettings"


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

.field private mLockscreen:Lcom/android/settings_ex/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

.field private mSmsRingtonePreference:Landroid/preference/Preference;

.field private mSoundDirectPreference:Landroid/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

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
            "Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mZenModeEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x2

    const/4 v9, 0x0

    .line 102
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "media_volume"

    aput-object v2, v0, v9

    const-string v2, "alarm_volume"

    aput-object v2, v0, v4

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const-string v2, "notification_volume"

    aput-object v2, v0, v6

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 140
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    const-string v2, "oneplus_touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 154
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$2;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 162
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 165
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$3;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 178
    new-array v0, v7, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v6

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 633
    new-instance v5, Lcom/oneplus/settings/notification/OPNotificationSettings$6;

    const-string v7, "vibrate_when_ringing"

    const-string v8, "oem_vibrate_when_incall"

    new-array v10, v9, [I

    move v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/notification/OPNotificationSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE__WHEN_RINGING:Lcom/android/settings_ex/notification/SettingPref;

    .line 642
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$7;

    const-string v2, "vibrate_when_mute"

    const-string v3, "oem_vibrate_under_silent"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/notification/OPNotificationSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_WHEN_SILENT:Lcom/android/settings_ex/notification/SettingPref;

    .line 802
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$8;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$8;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    .line 112
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    .line 114
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    .line 138
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    .line 414
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationSettings$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$5;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 628
    const-string v0, "oem_vibrate_when_incall"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 630
    const-string v0, "oem_vibrate_under_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isShowPhoneSummary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->VIBRATE_WHEN_SILENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenMute()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private enableMuteMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 673
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 674
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 675
    return-void
.end method

.method private enableRingMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 684
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 686
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 687
    return-void
.end method

.method private enableZenMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 679
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 680
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/location/RadioButtonPreference;->setChecked(Z)V

    .line 681
    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 352
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 354
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 355
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 357
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 358
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 367
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 175
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

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 401
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 402
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 406
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 407
    const-string v0, "message_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    .line 408
    return-void
.end method

.method private initThreeModeSettings(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 767
    const-string v0, "oneplus_silent_mode"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 768
    const-string v0, "oneplus_zen_mode_settings"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 769
    const-string v0, "oneplus_ring_pattern"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    .line 770
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateThreeKeyModeSelected()V

    .line 771
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 772
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 773
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 774
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeStageKey.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusMuteMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 777
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusZenMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 778
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mOneplusrRingMode:Lcom/android/settings_ex/location/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 780
    :cond_0
    return-void
.end method

.method private initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 789
    const-string v0, "vibrate_when_mute"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    .line 790
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenMute()V

    .line 791
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE_WHEN_SILENT:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 792
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 783
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 784
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateVibrateWhenRinging()V

    .line 785
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREF_VIBRATE__WHEN_RINGING:Lcom/android/settings_ex/notification/SettingPref;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 786
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 311
    .local v0, "volumePref":Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->setCallback(Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;)V

    .line 312
    invoke-virtual {v0, p2}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->setStream(I)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-object v0
.end method

.method private isShowPhoneSummary()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    :cond_0
    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSilentMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 763
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_silent_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isZenMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_zen_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method private nofityModeChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 737
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 738
    .local v0, "mThreeIntent":Landroid/content/Intent;
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    const-string v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isSilentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isZenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string v1, "silent_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 339
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 340
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    :goto_0
    return-void

    .line 341
    :cond_0
    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 342
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 343
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x10405b9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 348
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 343
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 4

    .prologue
    const v0, 0x7f020183

    .line 319
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->showIcon(I)V

    .line 324
    return-void

    .line 319
    :cond_1
    iget v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->wasRingerModeVibrate()Z

    move-result v2

    if-nez v2, :cond_0

    const v0, 0x7f020182

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 333
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iput v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    .line 335
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 442
    if-nez p0, :cond_0

    .line 443
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-object v1

    .line 447
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 449
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_1
    const v0, 0x10403ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "summary":Ljava/lang/CharSequence;
    const-string v0, "NotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRingtoneName uriString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " systemName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-nez v1, :cond_3

    .line 453
    const v0, 0x10403cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_1
    move-object v1, v7

    .line 480
    goto :goto_0

    .line 455
    :cond_3
    const/4 v6, 0x0

    .line 457
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
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

    .line 465
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 475
    :cond_5
    if-eqz v6, :cond_2

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 461
    :cond_6
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
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

    .line 470
    :catch_0
    move-exception v0

    .line 475
    if-eqz v6, :cond_2

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 472
    :catch_1
    move-exception v0

    .line 475
    if-eqz v6, :cond_2

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 475
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private updateThreeKeyMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 690
    if-ne p1, v4, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableMuteMode()V

    .line 692
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mute"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_silent_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 698
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_zen_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_ring_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    :cond_0
    :goto_0
    move v0, p1

    .line 728
    .local v0, "state":I
    if-ne v0, v5, :cond_3

    .line 729
    invoke-direct {p0, v6}, Lcom/oneplus/settings/notification/OPNotificationSettings;->nofityModeChange(I)V

    .line 730
    invoke-direct {p0, v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->nofityModeChange(I)V

    .line 734
    :goto_1
    return-void

    .line 702
    .end local v0    # "state":I
    :cond_1
    if-ne p1, v6, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableZenMode()V

    .line 704
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 708
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_silent_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 710
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_zen_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_ring_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 714
    :cond_2
    if-ne p1, v5, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableRingMode()V

    .line 716
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mute"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "silent_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_silent_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_zen_status"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_ring_status"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 732
    .restart local v0    # "state":I
    :cond_3
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->nofityModeChange(I)V

    goto/16 :goto_1
.end method

.method private updateThreeKeyModeSelected()V
    .locals 1

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isSilentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableMuteMode()V

    .line 755
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->isZenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableZenMode()V

    goto :goto_0

    .line 753
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->enableRingMode()V

    goto :goto_0
.end method

.method private updateVibrateWhenMute()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 795
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenMute:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 798
    :goto_0
    return-void

    .line 796
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

    .line 484
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
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

.method private wasRingerModeVibrate()Z
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingerMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x1080300

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    .line 194
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 196
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    .line 197
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 199
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 201
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-nez v9, :cond_0

    .line 202
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 205
    :cond_0
    const v9, 0x7f080046

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->addPreferencesFromResource(I)V

    .line 207
    const-string v9, "sound"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 208
    .local v6, "sound":Landroid/preference/PreferenceCategory;
    const-string v9, "media_volume"

    const/4 v10, 0x3

    const v11, 0x10802fa

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 210
    const-string v9, "alarm_volume"

    const/4 v10, 0x4

    const v11, 0x10802f8

    invoke-direct {p0, v9, v10, v11}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 212
    iget-boolean v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVoiceCapable:Z

    if-eqz v9, :cond_2

    .line 213
    const-string v9, "ring_volume"

    const/4 v10, 0x2

    invoke-direct {p0, v9, v10, v12}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 216
    const-string v9, "notification_volume"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :goto_0
    const-string v9, "ringtone_category"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 224
    .local v3, "mRingRoot":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 226
    const-string v9, "vibrate_category"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 227
    .local v7, "vibrate":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v6}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 228
    invoke-direct {p0, v6}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initThreeModeSettings(Landroid/preference/PreferenceCategory;)V

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "oem.threeStageKey.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 231
    const-string v9, "vibrate_category_preference_divider_line"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 232
    .local v8, "vibrateCategoryPreferenceDividerLine":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    .end local v8    # "vibrateCategoryPreferenceDividerLine":Landroid/preference/PreferenceCategory;
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V

    .line 240
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    .line 241
    const-string v9, "sound_direct"

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    .line 242
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    new-instance v10, Lcom/oneplus/settings/notification/OPNotificationSettings$4;

    invoke-direct {v10, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$4;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 258
    .local v5, "root":Landroid/preference/PreferenceScreen;
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;

    const-string v10, "com.oneplus.dirac.simplemanager"

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "oem.direct.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 274
    :cond_1
    :goto_2
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 275
    .local v4, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 218
    .end local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mRingRoot":Landroid/preference/PreferenceCategory;
    .end local v4    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    .end local v5    # "root":Landroid/preference/PreferenceScreen;
    .end local v7    # "vibrate":Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v9, "notification_volume"

    const/4 v10, 0x5

    invoke-direct {p0, v9, v10, v12}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    move-result-object v9

    iput-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 221
    const-string v9, "ring_volume"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 235
    .restart local v3    # "mRingRoot":Landroid/preference/PreferenceCategory;
    .restart local v7    # "vibrate":Landroid/preference/PreferenceCategory;
    :cond_3
    invoke-direct {p0, v7}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V

    .line 236
    invoke-direct {p0, v7}, Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    goto :goto_1

    .line 263
    .restart local v5    # "root":Landroid/preference/PreferenceScreen;
    :cond_4
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_1

    .line 264
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 268
    :cond_5
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v9, :cond_1

    .line 269
    iget-object v9, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 277
    .restart local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;->register(Z)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->register(Z)V

    .line 305
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 652
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_silent_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateThreeKeyMode(I)V

    .line 662
    :goto_0
    return v0

    .line 655
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_zen_mode_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateThreeKeyMode(I)V

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_ring_pattern"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateThreeKeyMode(I)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 281
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 282
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->lookupRingtoneNames()V

    .line 283
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mReceiver:Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/notification/OPNotificationSettings$Receiver;->register(Z)V

    .line 284
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingOrNotificationPreference()V

    .line 285
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V

    .line 286
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;

    .line 287
    .local v6, "volumePref":Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 289
    .end local v6    # "volumePref":Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 290
    .local v2, "isRestricted":Z
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 291
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 292
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 293
    if-nez v2, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 296
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/notification/OPNotificationSettings;->mSettingsPrefsObserver:Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;

    invoke-virtual {v7, v8}, Lcom/oneplus/settings/notification/OPNotificationSettings$SettingsPrefsObserver;->register(Z)V

    .line 297
    return-void
.end method
