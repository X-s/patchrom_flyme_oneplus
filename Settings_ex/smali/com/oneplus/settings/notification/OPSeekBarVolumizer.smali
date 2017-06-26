.class public Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.super Ljava/lang/Object;
.source "OPSeekBarVolumizer.java"

# interfaces
.implements Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;,
        Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final OEM_HEADSET_PLUG_ACTION:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field private static final TAG:Ljava/lang/String; = "OPSeekBarVolumizer"


# instance fields
.field private isHeadseOn:Z

.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Lcom/oneplus/widget/OPSeekBar;

.field private final mStreamType:I

.field private final mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

.field private mZenMode:I

.field private mZenMute:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    .line 78
    new-instance v0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    .line 85
    iput v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    .line 88
    iput v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 101
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 102
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 105
    iput p2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 108
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    .line 109
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMaxStreamVolume:I

    .line 114
    iput-object p4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 116
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 122
    :cond_1
    if-nez p3, :cond_2

    .line 123
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 124
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 131
    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z

    .line 133
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateZenMute()V

    .line 134
    return-void

    .line 125
    :cond_3
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 126
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 128
    :cond_4
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateZenMute()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static synthetic access$1300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 48
    invoke-static {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAffectedByRingerMode:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/widget/OPSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return v0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 137
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenMuted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    if-eq v1, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 209
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    invoke-interface {v1, p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v3, 0xc0

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 233
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OPSeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onStopSample()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 255
    :cond_0
    return-void
.end method

.method private postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 305
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    .line 388
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 390
    .local v2, "volume":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 392
    .local v0, "lastAudibleVolume":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 393
    .local v1, "mute":Z
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mUiHandler:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    invoke-virtual {v3, v2, v0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 395
    .end local v0    # "lastAudibleVolume":I
    .end local v1    # "mute":Z
    .end local v2    # "volume":I
    :cond_0
    return-void
.end method

.method private updateZenMute()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_three_key_define"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z

    .line 436
    const-string v0, "OPSeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZenMute mZenMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    :cond_0
    move v0, v1

    .line 433
    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/OPSeekBar;->incrementProgressBy(I)V

    .line 335
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 336
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStartSample()V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 338
    return-void
.end method

.method public getSeekBar()Lcom/oneplus/widget/OPSeekBar;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    const-string v0, "OPSeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 179
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 186
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMuted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_1

    .line 190
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 196
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 341
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 343
    iget v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 344
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStartSample()V

    .line 345
    iput v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0}, Lcom/oneplus/widget/OPSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 348
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 349
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStopSample()V

    .line 350
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 289
    const/4 p2, 0x1

    .line 290
    invoke-virtual {p1, p2}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 293
    :cond_0
    if-eqz p3, :cond_1

    .line 294
    invoke-direct {p0, p2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mCallback:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;->onProgressChanged(Lcom/oneplus/widget/OPSeekBar;IZ)V

    .line 299
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isHeadseOn:Z

    .line 528
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateZenMute()V

    .line 529
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    .line 530
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 533
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 311
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStartSample()V

    .line 315
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 283
    return-void
.end method

.method public setSeekBar(Lcom/oneplus/widget/OPSeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Lcom/oneplus/widget/OPSeekBar;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setMax(I)V

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->updateSeekBar()V

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 150
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OPSeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 274
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 275
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    new-instance v1, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    .line 277
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->register(Z)V

    .line 278
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    goto :goto_0
.end method

.method public startSample()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStartSample()V

    .line 323
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStopSample()V

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->register(Z)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mReceiver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/OPSeekBar;->setOnSeekBarChangeListener(Lcom/oneplus/widget/OPSeekBar$OnSeekBarChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 265
    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 266
    iput-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mVolumeObserver:Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->postStopSample()V

    .line 327
    return-void
.end method

.method protected updateSeekBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->isZenMuted()Z

    move-result v0

    .line 160
    .local v0, "zenMuted":Z
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mRingerMode:I

    if-ne v1, v3, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mZenMute:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mNotificationOrRing:Z

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    invoke-virtual {v1, v3}, Lcom/oneplus/widget/OPSeekBar;->setEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mSeekBar:Lcom/oneplus/widget/OPSeekBar;

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mLastProgress:I

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/widget/OPSeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_1
.end method
