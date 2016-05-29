.class public Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
.super Ljava/lang/Object;
.source "OPSeekBarVolumizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ui/OPSeekBarVolumizer$1;,
        Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;,
        Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;,
        Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;,
        Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mOriginalStreamVolume:I

.field private final mReceiver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private final mUiHandler:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private final mVolumeObserver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;-><init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mUiHandler:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;

    .line 41
    new-instance v1, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;-><init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;Lcom/android/settings_ex/ui/OPSeekBarVolumizer$1;)V

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mReceiver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;

    .line 46
    iput v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    .line 48
    iput v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 59
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 60
    iput p2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mMaxStreamVolume:I

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p4, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mCallback:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

    .line 66
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 68
    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    iput v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    .line 69
    const-string v1, "WAR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPSeekBarVolumizer mOriginalStreamVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  streamType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;

    iget-object v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;-><init>(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeObserver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeObserver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mReceiver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 76
    if-nez p3, :cond_0

    .line 77
    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 78
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 85
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void

    .line 79
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 80
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 82
    :cond_2
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mUiHandler:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$H;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ui/OPSeekBarVolumizer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mCallback:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mCallback:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;

    invoke-interface {v1, p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Callback;->onSampleStarting(Lcom/android/settings_ex/ui/OPSeekBarVolumizer;)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

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
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 167
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    return-void

    .line 137
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStartSample()V

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 244
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 191
    :cond_0
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    const-string v0, "SeekBarVolumizer"

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

    .line 125
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->onStartSample()V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->onStopSample()V

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->onInitSample()V

    goto :goto_0

    .line 108
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
    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

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
    const/4 v2, -0x1

    .line 247
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 249
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStartSample()V

    .line 251
    iput v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeBeforeMute:I

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStopSample()V

    .line 257
    const-string v0, "WAR"

    const-string v1, "muteVolume : ........"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 201
    if-nez p3, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 3
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 269
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 270
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 271
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    .line 272
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postSetVolume(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .prologue
    .line 262
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 263
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 264
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 266
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 217
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStartSample()V

    .line 221
    return-void
.end method

.method postSetVolume(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    .line 210
    iput p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    .line 211
    const-string v0, "SeekBarVolumizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 197
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    const-string v0, "WAR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxStreamVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLastProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 99
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_0
.end method

.method public startSample()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStartSample()V

    .line 229
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStopSample()V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mVolumeObserver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->mReceiver:Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer$Receiver;->setListening(Z)V

    .line 180
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPSeekBarVolumizer;->postStopSample()V

    .line 233
    return-void
.end method
