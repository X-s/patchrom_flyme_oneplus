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
.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final KEY_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final KEY_ZEN_ACCESS:Ljava/lang/String; = "manage_zen_access"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "NotificationSettings"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/settings_ex/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

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

.field private mZenAccess:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "media_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "manage_zen_access"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "zen_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 653
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 98
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    .line 99
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    .line 100
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    .line 101
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 315
    new-instance v0, Lcom/android/settings_ex/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/notification/NotificationSettings$1;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 624
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 522
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

    .line 517
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
    .line 254
    iget-object v5, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 256
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 257
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 259
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 260
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 269
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 7
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v6, 0x7f0c0c72

    const v5, 0x7f0c0c71

    const v4, 0x7f0c0c70

    .line 446
    const-string v2, "lock_screen_notifications"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    .line 447
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v2, :cond_0

    .line 448
    const-string v2, "NotificationSettings"

    const-string v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 453
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 454
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 455
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 458
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/settings_ex/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 464
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 465
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/DropDownPreference;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 466
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    new-instance v3, Lcom/android/settings_ex/notification/NotificationSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/notification/NotificationSettings$4;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 409
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 411
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 418
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updatePulse()V

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$3;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 303
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 308
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 309
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 377
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 379
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings_ex/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/notification/NotificationSettings$2;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 213
    .local v0, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;)V

    .line 214
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 215
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v0, p3}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 217
    return-object v0
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 491
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 493
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 498
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 500
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 529
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 531
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0c84

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 535
    .restart local v0    # "n":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130009

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshZenAccess()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 242
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 243
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 245
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x10405b9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 250
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 245
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 505
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    if-nez v2, :cond_0

    .line 514
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 509
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 510
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f0c0c72

    :goto_2
    iput v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 513
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreen:Lcom/android/settings_ex/DropDownPreference;

    iget v3, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 509
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 510
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0c0c70

    goto :goto_2

    :cond_4
    const v2, 0x7f0c0c71

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 436
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

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x1080300

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 226
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const v0, 0x1080301

    goto :goto_0

    :cond_2
    const v0, 0x10802ff

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 235
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iput v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingerMode:I

    .line 237
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 336
    if-nez p0, :cond_1

    .line 337
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    :goto_0
    return-object v7

    .line 340
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 341
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403ce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 344
    const v0, 0x10403cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 346
    :cond_2
    const/4 v6, 0x0

    .line 348
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
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

    .line 356
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 366
    :cond_4
    if-eqz v6, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
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

    .line 361
    :catch_0
    move-exception v0

    .line 366
    if-eqz v6, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 366
    if-eqz v6, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
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
    .line 229
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
    .line 127
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1080300

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    .line 137
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSecure:Z

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 145
    :cond_0
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 147
    const-string v2, "sound"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 148
    .local v1, "sound":Landroid/preference/PreferenceCategory;
    const-string v2, "media_volume"

    const/4 v3, 0x3

    const v4, 0x10802fa

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 150
    const-string v2, "alarm_volume"

    const/4 v3, 0x4

    const v4, 0x10802f8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 152
    iget-boolean v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_1

    .line 153
    const-string v2, "ring_volume"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 156
    const-string v2, "notification_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 164
    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 166
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 168
    .local v0, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/android/settings_ex/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 171
    const-string v2, "manage_notification_access"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 172
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 173
    const-string v2, "manage_zen_access"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mZenAccess:Landroid/preference/Preference;

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshZenAccess()V

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 177
    return-void

    .line 158
    .end local v0    # "notification":Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v2, "notification_volume"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings_ex/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    .line 161
    const-string v2, "ring_volume"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 181
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->refreshZenAccess()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 185
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 186
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mReceiver:Lcom/android/settings_ex/notification/NotificationSettings$Receiver;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/notification/NotificationSettings$Receiver;->register(Z)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 189
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

    .line 190
    .local v6, "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 192
    .end local v6    # "volumePref":Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 193
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

    .line 194
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 195
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 196
    if-nez v2, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 193
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 199
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    return-void
.end method
