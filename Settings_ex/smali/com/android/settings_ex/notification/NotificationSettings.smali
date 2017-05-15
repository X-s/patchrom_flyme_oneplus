.class public Lcom/android/settings_ex/notification/NotificationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
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
.field private static final DEFAULT_ON:I = 0x0

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_MMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone_category"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREENSHOT_SOUNDS:Ljava/lang/String; = "screenshot_sounds"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "system"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final PREFS:[Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "NotificationSettings"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

.field private mSmsRingtonePreference:Landroid/preference/Preference;

.field private mSoundDirectPreference:Landroid/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 102
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "media_volume"

    aput-object v2, v0, v4

    const-string v2, "alarm_volume"

    aput-object v2, v0, v6

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const-string v2, "notification_volume"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$1;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 123
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$2;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    .line 131
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 134
    new-instance v0, Lcom/android/settings_ex/notification/SettingPref;

    const-string v2, "screenshot_sounds"

    const-string v3, "oem_screenshot_sound_enable"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    .line 137
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$3;

    const-string v2, "vibrate_on_touch"

    const-string v3, "haptic_feedback_enabled"

    new-array v5, v4, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/notification/NotificationSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ex/notification/SettingPref;

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings_ex/notification/NotificationSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings_ex/notification/SettingPref;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .line 635
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$7;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationSettings$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 160
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    .line 161
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    .line 162
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    .line 163
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 404
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$5;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 606
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()[Lcom/android/settings_ex/notification/SettingPref;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isShowPhoneSummary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 342
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 344
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 345
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 347
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 348
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 357
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
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
    .line 146
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 147
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
    .line 391
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 396
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 397
    const-string v0, "message_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;

    .line 398
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 475
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 477
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 486
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$6;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 301
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V

    .line 302
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 305
    return-object v0
.end method

.method private isShowPhoneSummary()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 330
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    :goto_0
    return-void

    .line 331
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 333
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x1040598

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 338
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x10802ff

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 314
    return-void

    .line 309
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x1080300

    goto :goto_0

    :cond_2
    const v0, 0x10802fe

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 323
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 325
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 432
    if-nez p0, :cond_0

    .line 433
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-object v1

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 439
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_1
    const v0, 0x10403aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 442
    const v0, 0x10403a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_1
    move-object v1, v7

    .line 469
    goto :goto_0

    .line 444
    :cond_3
    const/4 v6, 0x0

    .line 446
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
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

    .line 454
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 464
    :cond_5
    if-eqz v6, :cond_2

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 450
    :cond_6
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
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

    .line 459
    :catch_0
    move-exception v0

    .line 464
    if-eqz v6, :cond_2

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 461
    :catch_1
    move-exception v0

    .line 464
    if-eqz v6, :cond_2

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 464
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

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
    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

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
    .line 186
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x10802ff

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 193
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 195
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    .line 196
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 200
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 204
    :cond_0
    const v7, 0x7f080030

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 206
    const-string v7, "sound"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 207
    .local v5, "sound":Landroid/preference/PreferenceCategory;
    const-string v7, "media_volume"

    const/4 v8, 0x3

    const v9, 0x10802f9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 209
    const-string v7, "alarm_volume"

    const/4 v8, 0x4

    const v9, 0x10802f7

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 211
    iget-boolean v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v7, :cond_2

    .line 212
    const-string v7, "ring_volume"

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8, v10}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 215
    const-string v7, "notification_volume"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :goto_0
    const-string v7, "ringtone_category"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 223
    .local v4, "ringtone":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 224
    const-string v7, "system"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 225
    .local v6, "system":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v6}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 227
    const-string v7, "sound_direct"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    .line 228
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    new-instance v8, Lcom/android/settings_ex/notification/NotificationSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/notification/NotificationSettings$4;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v8, "com.oneplus.dirac.simplemanager"

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "oem.direct.support"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 246
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_1

    .line 247
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 259
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->PREFS:[Lcom/android/settings_ex/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 260
    .local v3, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/settings_ex/notification/SettingPref;->init(Lcom/android/settings_ex/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    .end local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    .end local v4    # "ringtone":Landroid/preference/PreferenceCategory;
    .end local v6    # "system":Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v7, "notification_volume"

    const/4 v8, 0x5

    invoke-direct {p0, v7, v8, v10}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 220
    const-string v7, "ring_volume"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 251
    .restart local v4    # "ringtone":Landroid/preference/PreferenceCategory;
    .restart local v6    # "system":Landroid/preference/PreferenceCategory;
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_1

    .line 252
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSoundDirectPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 262
    .restart local v0    # "arr$":[Lcom/android/settings_ex/notification/SettingPref;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 263
    const-string v7, "vibrate_when_ringing"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    const-string v7, "screen_locking_sounds"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 295
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 270
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 272
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 273
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 274
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 275
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 277
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 278
    .local v6, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 280
    .end local v6    # "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 281
    .local v2, "isRestricted":Z
    sget-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 282
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 283
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 284
    if-nez v2, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 287
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method
