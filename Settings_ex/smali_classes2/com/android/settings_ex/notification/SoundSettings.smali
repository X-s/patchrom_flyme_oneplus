.class public Lcom/android/settings_ex/notification/SoundSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/SoundSettings$1;,
        Lcom/android/settings_ex/notification/SoundSettings$2;,
        Lcom/android/settings_ex/notification/SoundSettings$3;,
        Lcom/android/settings_ex/notification/SoundSettings$4;,
        Lcom/android/settings_ex/notification/SoundSettings$5;,
        Lcom/android/settings_ex/notification/SoundSettings$6;,
        Lcom/android/settings_ex/notification/SoundSettings$7;,
        Lcom/android/settings_ex/notification/SoundSettings$8;,
        Lcom/android/settings_ex/notification/SoundSettings$H;,
        Lcom/android/settings_ex/notification/SoundSettings$Receiver;,
        Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;,
        Lcom/android/settings_ex/notification/SoundSettings$SummaryProvider;,
        Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_ON:I = 0x0

.field private static final KEY_ALARM_RINGTONE:Ljava/lang/String; = "alarm_ringtone"

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_CHARGING_SOUNDS:Ljava/lang/String; = "charging_sounds"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_INCOMING_CALL_VIBRATE:Ljava/lang/String; = "incoming_call_vibrate_mode"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_MMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREENSHOT_SOUNDS:Ljava/lang/String; = "screenshot_sounds"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATE_INTENSITY:Ljava/lang/String; = "vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_ON_TOUCH_FOR_VIBRATE:Ljava/lang/String; = "vibrate_on_touch_for_vibrate"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_VIBRATE_WHEN_RINGING_FOR_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing_for_vibrate"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings_ex/notification/SettingPref;

.field private static final REQUEST_CODE:I = 0xc8

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final SELECTED_PREFERENCE_KEY:Ljava/lang/String; = "selected_preference"

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final THREE_KEY_SILENT_VALUE:I = 0x1


# instance fields
.field private isSupportLinearMotor:Z

.field private mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings_ex/notification/SoundSettings$H;

.field private mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/settings_ex/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mSoundDirectPreference:Landroid/support/v7/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

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

.field private sVibratePatternrhythm:[[J


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mHandler:Lcom/android/settings_ex/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/notification/SoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    const-string/jumbo v2, "media_volume"

    aput-object v2, v0, v4

    .line 138
    const-string/jumbo v2, "alarm_volume"

    aput-object v2, v0, v1

    .line 139
    const-string/jumbo v2, "ring_volume"

    aput-object v2, v0, v6

    .line 140
    const-string/jumbo v2, "notification_volume"

    aput-object v2, v0, v11

    .line 141
    const-string/jumbo v2, "zen_mode"

    aput-object v2, v0, v12

    .line 136
    sput-object v0, Lcom/android/settings_ex/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    .line 194
    const-string/jumbo v2, "charging_sounds"

    const-string/jumbo v3, "charging_sounds_enabled"

    .line 193
    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 195
    new-instance v5, Lcom/android/settings_ex/notification/SoundSettings$1;

    .line 196
    const-string/jumbo v7, "touch_sounds"

    const-string/jumbo v8, "sound_effects_enabled"

    .line 195
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 209
    new-instance v5, Lcom/android/settings_ex/notification/SoundSettings$2;

    .line 210
    const-string/jumbo v7, "dial_pad_tones"

    const-string/jumbo v8, "dtmf_tone"

    .line 209
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 217
    new-instance v5, Lcom/android/settings_ex/notification/SettingPref;

    .line 218
    const-string/jumbo v7, "screen_locking_sounds"

    const-string/jumbo v8, "lockscreen_sounds_enabled"

    .line 217
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 220
    new-instance v5, Lcom/android/settings_ex/notification/SettingPref;

    .line 221
    const-string/jumbo v7, "screenshot_sounds"

    const-string/jumbo v8, "oem_screenshot_sound_enable"

    .line 220
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 223
    new-instance v5, Lcom/android/settings_ex/notification/SoundSettings$3;

    .line 224
    const-string/jumbo v7, "vibrate_on_touch"

    const-string/jumbo v8, "haptic_feedback_enabled"

    .line 223
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 232
    new-instance v5, Lcom/android/settings_ex/notification/SoundSettings$4;

    .line 233
    const-string/jumbo v7, "vibrate_on_touch_for_vibrate"

    const-string/jumbo v8, "haptic_feedback_enabled"

    .line 232
    new-array v10, v4, [I

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings_ex/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v5, Lcom/android/settings_ex/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings_ex/notification/SettingPref;

    .line 246
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    .line 247
    sget-object v2, Lcom/android/settings_ex/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    .line 248
    sget-object v2, Lcom/android/settings_ex/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    .line 249
    sget-object v1, Lcom/android/settings_ex/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v6

    .line 250
    sget-object v1, Lcom/android/settings_ex/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v11

    .line 251
    sget-object v1, Lcom/android/settings_ex/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v12

    .line 252
    sget-object v1, Lcom/android/settings_ex/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 254
    sget-object v1, Lcom/android/settings_ex/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings_ex/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 246
    sput-object v0, Lcom/android/settings_ex/notification/SoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 1010
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$6;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/SoundSettings$6;-><init>()V

    .line 1009
    sput-object v0, Lcom/android/settings_ex/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1079
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$8;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/SoundSettings$8;-><init>()V

    .line 1078
    sput-object v0, Lcom/android/settings_ex/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 124
    new-array v0, v1, [[J

    .line 125
    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 126
    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 127
    new-array v1, v4, [J

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 128
    const/16 v1, 0x11

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 130
    new-array v1, v4, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 124
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    .line 146
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    .line 147
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$H;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/notification/SoundSettings$H;-><init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mHandler:Lcom/android/settings_ex/notification/SoundSettings$H;

    .line 148
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;

    .line 149
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mReceiver:Lcom/android/settings_ex/notification/SoundSettings$Receiver;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingerMode:I

    .line 719
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/SoundSettings$5;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1065
    new-instance v0, Lcom/android/settings_ex/notification/SoundSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/SoundSettings$7;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    return-void

    .line 125
    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    .line 126
    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    .line 127
    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    .line 128
    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    .line 130
    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 653
    iget-object v5, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 655
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 656
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 657
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 658
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 659
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 660
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 661
    return-object v4

    .line 665
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "SoundSettings"

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 243
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRingtones()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 707
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 709
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 711
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "message_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 701
    return-void

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 705
    iput-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method private initVibrateWhenRinging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 805
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 804
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 806
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 807
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void

    .line 810
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 812
    iput-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 813
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 816
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 817
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/SoundSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/SoundSettings$10;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 803
    return-void
.end method

.method private initVibrateWhenRingingForVibrate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "vibrate_when_ringing_for_vibrate"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 836
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 838
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 839
    return-void

    .line 841
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 842
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 843
    iput-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 844
    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 847
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    .line 848
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/SoundSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/SoundSettings$11;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 835
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 579
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V

    .line 580
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 581
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 583
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    .prologue
    .line 640
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 641
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 642
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 643
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 644
    if-eqz v0, :cond_2

    .line 645
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 646
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 645
    const v4, 0x10405db

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 647
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 649
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 639
    return-void

    .line 646
    :cond_2
    const/4 v1, 0x0

    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateRingOrNotificationPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 593
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 594
    const-string/jumbo v2, "oem_vibrate_under_silent"

    .line 593
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 595
    .local v0, "value":I
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 596
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->isZenMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const v1, 0x10802f4

    .line 595
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 586
    return-void

    .line 597
    :cond_0
    const v1, 0x10802f3

    goto :goto_0

    .line 598
    :cond_1
    const v1, 0x10802f2

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 634
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 635
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingerMode:I

    .line 636
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 632
    return-void
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 756
    if-nez p1, :cond_0

    .line 757
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-object v3

    .line 762
    :cond_0
    if-ne v0, p2, :cond_2

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings;->getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 768
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const v0, 0x10403e9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 770
    .local v9, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 771
    const v0, 0x10403e7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 798
    :cond_1
    :goto_1
    return-object v9

    .line 765
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v9    # "summary":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 773
    .restart local v9    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const/4 v6, 0x0

    .line 775
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 777
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 778
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 777
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 783
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 784
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 793
    :cond_5
    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 779
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_1
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 781
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 780
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 790
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 793
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 788
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 793
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_1

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 792
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 793
    if-eqz v6, :cond_7

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_7
    throw v0
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 420
    .local v1, "incomingCallVibrateModePreference":Landroid/support/v7/preference/Preference;
    if-eqz v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "entries":[Ljava/lang/String;
    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    .end local v0    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 829
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 831
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 830
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 828
    return-void
.end method

.method private updateVibrateWhenRingingForVibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 860
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 862
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 861
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 859
    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 628
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 628
    :cond_0
    return v0
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 527
    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    const-string/jumbo v0, "incoming_call_vibrate_mode"

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 522
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 519
    :cond_0
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 505
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "incoming_call_vibrate_intensity"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "intensityvalue":I
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 508
    if-nez v0, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    .line 515
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v2, v2, p1

    invoke-virtual {v1, v2, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 504
    .end local v0    # "intensityvalue":I
    :cond_1
    return-void

    .line 510
    .restart local v0    # "intensityvalue":I
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x2

    aput-wide v2, v1, v4

    goto :goto_0

    .line 512
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, p1

    const-wide/16 v2, -0x3

    aput-wide v2, v1, v4

    goto :goto_0
.end method

.method public getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1038
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    .line 1040
    .local v0, "isRingSimSwitchOn":Z
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getSim1Enable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getSim2Enable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-static {p1, v3}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1046
    .local v1, "ringtoneUri":Landroid/net/Uri;
    return-object v1

    .line 1049
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1050
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    return-object v1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 265
    const/16 v0, 0x150

    return v0
.end method

.method public getSim1Enable()Z
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getThreeKeyStatus(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    const/4 v2, 0x0

    .line 609
    .local v2, "threeKeyStatus":I
    if-nez p1, :cond_0

    .line 610
    const-string/jumbo v3, "SoundSettings"

    const-string/jumbo v4, "getThreeKeyStatus error, context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v2

    .line 614
    :cond_0
    const-string/jumbo v3, "threekey"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oem/os/ThreeKeyManager;

    .line 615
    .local v1, "threeKeyManager":Lcom/oem/os/ThreeKeyManager;
    if-eqz v1, :cond_1

    .line 617
    :try_start_0
    invoke-virtual {v1}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 623
    :cond_1
    return v2

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SoundSettings"

    const-string/jumbo v4, "Exception occurs, Three Key Service may not ready"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    return v2
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isZenMuted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/SoundSettings;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings_ex/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 563
    iput-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    .line 560
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 274
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVoiceCapable:Z

    .line 276
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "oem.linear.motor.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->isSupportLinearMotor:Z

    .line 280
    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 283
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 285
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v9}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 289
    :cond_0
    :goto_0
    const v9, 0x7f08008a

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 291
    const-string/jumbo v9, "media_volume"

    const/4 v10, 0x3

    .line 292
    const v11, 0x10802ed

    .line 291
    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 293
    const-string/jumbo v9, "alarm_volume"

    const/4 v10, 0x4

    .line 294
    const v11, 0x10802eb

    .line 293
    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 296
    const-string/jumbo v9, "sound"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    .line 298
    .local v6, "sound":Landroid/support/v7/preference/PreferenceCategory;
    iget-boolean v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v9, :cond_6

    .line 300
    const-string/jumbo v9, "ring_volume"

    const/4 v10, 0x2

    .line 301
    const v11, 0x10802f3

    .line 300
    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v9

    .line 299
    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 304
    const-string/jumbo v9, "notification_volume"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 317
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 318
    const v10, 0x1120077

    .line 317
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 320
    .local v1, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v1, :cond_1

    .line 321
    :try_start_0
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "com.android.cellbroadcastreceiver"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 322
    const/4 v10, 0x2

    .line 321
    if-ne v9, v10, :cond_1

    .line 323
    const/4 v1, 0x0

    .line 329
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    :cond_1
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    .line 330
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 331
    const-string/jumbo v10, "no_config_cell_broadcasts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 330
    invoke-static {v9, v10, v11}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    .line 329
    if-eqz v9, :cond_3

    .line 332
    :cond_2
    const-string/jumbo v9, "cell_broadcast_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 334
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->initRingtones()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->initVibrateWhenRinging()V

    .line 337
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->initVibrateWhenRingingForVibrate()V

    .line 339
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingerMode()V

    .line 340
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 342
    const-string/jumbo v9, "system"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    .line 343
    .local v7, "system":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v9, "sound_direct"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    .line 344
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    new-instance v10, Lcom/android/settings_ex/notification/SoundSettings$9;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/notification/SoundSettings$9;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 359
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.oneplus.dirac.simplemanager"

    invoke-static {v9, v10}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 360
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 361
    const-string/jumbo v10, "oem.direct.support"

    .line 360
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 362
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_4

    .line 363
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 371
    :cond_4
    :goto_3
    sget-object v10, Lcom/android/settings_ex/notification/SoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_4
    if-ge v9, v11, :cond_8

    aget-object v4, v10, v9

    .line 372
    .local v4, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 286
    .end local v4    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    .end local v6    # "sound":Landroid/support/v7/preference/PreferenceCategory;
    .end local v7    # "system":Landroid/support/v7/preference/PreferenceCategory;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_0

    .line 308
    .restart local v6    # "sound":Landroid/support/v7/preference/PreferenceCategory;
    :cond_6
    const-string/jumbo v9, "notification_volume"

    const/4 v10, 0x5

    .line 309
    const v11, 0x10802f3

    .line 308
    invoke-direct {p0, v9, v10, v11}, Lcom/android/settings_ex/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v9

    .line 307
    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 312
    const-string/jumbo v9, "ring_volume"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 326
    .restart local v1    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .local v1, "isCellBroadcastAppLinkEnabled":Z
    goto/16 :goto_2

    .line 367
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v7    # "system":Landroid/support/v7/preference/PreferenceCategory;
    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_4

    .line 368
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 374
    :cond_8
    const-string/jumbo v9, "vibrate_when_ringing"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    .line 375
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 376
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_9

    .line 377
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 379
    :cond_9
    const-string/jumbo v9, "screen_locking_sounds"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 382
    :cond_a
    if-eqz p1, :cond_b

    .line 383
    const-string/jumbo v9, "selected_preference"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "selectedPreference":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 385
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/RingtonePreference;

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    .line 389
    .end local v5    # "selectedPreference":Ljava/lang/String;
    :cond_b
    const-string/jumbo v9, "incoming_call_vibrate_mode"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

    .line 390
    const-string/jumbo v9, "preference_divider_line_vibrate"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 391
    .local v2, "mOPPreferenceDivider":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "incoming_call_vibrate_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 392
    .local v8, "value":I
    const-string/jumbo v9, "incoming_call_vibrate_mode"

    invoke-direct {p0, v9, v8}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 393
    const-string/jumbo v9, "vibrate"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 394
    .local v3, "mVibrateCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-boolean v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->isSupportLinearMotor:Z

    if-eqz v9, :cond_f

    .line 395
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_c

    .line 396
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 398
    :cond_c
    const-string/jumbo v9, "vibrate_on_touch"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 405
    :goto_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 406
    if-eqz v3, :cond_d

    .line 407
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 409
    :cond_d
    if-eqz v2, :cond_e

    .line 410
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 414
    :cond_e
    iget-object v9, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 269
    return-void

    .line 400
    :cond_f
    if-eqz v2, :cond_10

    .line 401
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 403
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 498
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 491
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onActivityPause()V

    goto :goto_0

    .line 493
    .end local v0    # "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 494
    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mReceiver:Lcom/android/settings_ex/notification/SoundSettings$Receiver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->register(Z)V

    .line 488
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 427
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 429
    .local v2, "value":I
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incoming_call_vibrate_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-direct {p0, v3, v2}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incoming_call_vibrate_intensity"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, "intensityvalue":I
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 434
    if-nez v0, :cond_2

    .line 435
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v6

    .line 441
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v4, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 443
    .end local v0    # "intensityvalue":I
    :cond_1
    return v8

    .line 436
    .restart local v0    # "intensityvalue":I
    :cond_2
    if-ne v0, v8, :cond_3

    .line 437
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v6

    goto :goto_0

    .line 438
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 439
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, v2

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v6

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 536
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0098

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "entriesValue":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "entries":[Ljava/lang/String;
    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v4, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    .line 541
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    .line 542
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string/jumbo v4, "incoming_call_vibrate_mode"

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 543
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    .line 544
    return v6

    .line 546
    .end local v0    # "entries":[Ljava/lang/String;
    .end local v1    # "entriesValue":[Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Lcom/android/settings_ex/RingtonePreference;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 547
    check-cast v3, Lcom/android/settings_ex/RingtonePreference;

    iput-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    .line 548
    iget-object v3, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    iget-object v4, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 550
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 551
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 554
    :cond_1
    return v6

    .line 556
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 449
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 450
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->lookupRingtoneNames()V

    .line 451
    iget-object v8, p0, Lcom/android/settings_ex/notification/SoundSettings;->mReceiver:Lcom/android/settings_ex/notification/SoundSettings$Receiver;

    invoke-virtual {v8, v10}, Lcom/android/settings_ex/notification/SoundSettings$Receiver;->register(Z)V

    .line 452
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 453
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 454
    iget-object v8, p0, Lcom/android/settings_ex/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 455
    .local v6, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 458
    .end local v6    # "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 459
    const-string/jumbo v11, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 458
    invoke-static {v8, v11, v12}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 460
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v8, p0, Lcom/android/settings_ex/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 461
    const-string/jumbo v11, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 460
    invoke-static {v8, v11, v12}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 462
    .local v2, "hasBaseRestriction":Z
    sget-object v12, Lcom/android/settings_ex/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v13, v12

    move v11, v9

    :goto_1
    if-ge v11, v13, :cond_5

    aget-object v3, v12, v11

    .line 463
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 464
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_1

    .line 465
    if-eqz v2, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v4, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 467
    :cond_1
    instance-of v8, v4, Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v8, :cond_2

    if-eqz v2, :cond_4

    .line 462
    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    :goto_3
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    goto :goto_1

    .restart local v4    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    move v8, v10

    .line 465
    goto :goto_2

    .line 468
    :cond_4
    check-cast v4, Lcom/android/settings_exlib/RestrictedPreference;

    .end local v4    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v4, v0}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 472
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "cell_broadcast_settings"

    .line 471
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/RestrictedPreference;

    .line 473
    .local v1, "broadcastSettingsPref":Lcom/android/settings_exlib/RestrictedPreference;
    if-eqz v1, :cond_6

    .line 475
    const-string/jumbo v8, "no_config_cell_broadcasts"

    .line 474
    invoke-virtual {v1, v8}, Lcom/android/settings_exlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 478
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 479
    sget-object v8, Lcom/android/settings_ex/notification/SoundSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    array-length v10, v8

    :goto_4
    if-ge v9, v10, :cond_8

    aget-object v5, v8, v9

    .line 480
    .local v5, "pref":Lcom/android/settings_ex/notification/SettingPref;
    if-eqz v5, :cond_7

    .line 481
    invoke-virtual {v5, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 479
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 448
    .end local v5    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 569
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    if-eqz v0, :cond_0

    .line 571
    const-string/jumbo v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mRequestPreference:Lcom/android/settings_ex/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1022
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1021
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1034
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 1030
    return-void
.end method
