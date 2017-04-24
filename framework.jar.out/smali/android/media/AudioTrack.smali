.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT_MAX:I = 0x8

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mLakalKindApps:[Ljava/lang/String;

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioTrack$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I

.field private mVoipApps:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 413
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 464
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 21
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.tencent.mm"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "com.skype.rover"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "com.whatsapp"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "com.alibaba.mobileim"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "com.tencent.mobileqqi"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "com.tencent.qt.qtx"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "com.xiaomi.channele"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "com.google.android.talk"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "cn.com.fetion"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, "cn.com.talker"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, "com.viber.voip"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string/jumbo v8, "jp.naver.line.android"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-string v8, "com.tencent.mobileqq"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "yuku.luyinji.full"

    aput-object v8, v2, v7

    const/16 v7, 0xe

    const-string/jumbo v8, "im.yixin"

    aput-object v8, v2, v7

    const/16 v7, 0xf

    const-string v8, "com.asiainno.pengpeng"

    aput-object v8, v2, v7

    const/16 v7, 0x10

    const-string v8, "com.duowan.mobile"

    aput-object v8, v2, v7

    const/16 v7, 0x11

    const-string v8, "com.immomo.momo"

    aput-object v8, v2, v7

    const/16 v7, 0x12

    const-string v8, "com.yy.yymeet"

    aput-object v8, v2, v7

    const/16 v7, 0x13

    const-string v8, "com.yx"

    aput-object v8, v2, v7

    const/16 v7, 0x14

    const-string v8, "com.facebook.katana"

    aput-object v8, v2, v7

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 219
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "com.lakala.android"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "com.unionpay.kalefu"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "com.huishuaka.credit"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "air.mobilepos"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "com.iboxpay.minicashbox"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "com.bill99.kuaishua"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "com.iboxpay.minicashbox"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "com.dcsdzficb"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "com.dcyiqing"

    aput-object v8, v2, v7

    const/16 v7, 0x9

    const-string v8, "com.dcyqzf"

    aput-object v8, v2, v7

    const/16 v7, 0xa

    const-string v8, "com.dczhongcicb"

    aput-object v8, v2, v7

    const/16 v7, 0xb

    const-string v8, "com.epay.impay.ui.dapaizhifu"

    aput-object v8, v2, v7

    const/16 v7, 0xc

    const-string v8, "com.epay.impay.ui.jfpal"

    aput-object v8, v2, v7

    const/16 v7, 0xd

    const-string/jumbo v8, "remob.com"

    aput-object v8, v2, v7

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    .line 276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 280
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 287
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 303
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 307
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 316
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 322
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 328
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 355
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2299
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2375
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal null AudioAttributes"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_0
    if-nez p2, :cond_1

    .line 495
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Illegal null AudioFormat"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v19

    .local v19, "looper":Landroid/os/Looper;
    if-nez v19, :cond_2

    .line 501
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    .line 504
    :cond_2
    const/4 v3, 0x0

    .line 505
    .local v3, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    .line 514
    :cond_3
    :goto_0
    const/4 v5, 0x0

    .line 515
    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v5

    .line 519
    :cond_4
    const/4 v4, 0x0

    .line 520
    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_8

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    .line 527
    :cond_5
    :goto_1
    const/4 v6, 0x1

    .line 528
    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    :cond_6
    move-object/from16 v2, p0

    move/from16 v7, p4

    .line 531
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 532
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 534
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 536
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 537
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    .line 538
    .local v17, "b":Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 540
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 542
    if-gez p5, :cond_9

    .line 543
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid audio session ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    .end local v4    # "channelMask":I
    .end local v5    # "channelIndexMask":I
    .end local v6    # "encoding":I
    .end local v17    # "b":Landroid/os/IBinder;
    :cond_7
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v3

    .line 510
    if-gtz v3, :cond_3

    .line 511
    const v3, 0xac44

    goto/16 :goto_0

    .line 523
    .restart local v4    # "channelMask":I
    .restart local v5    # "channelIndexMask":I
    :cond_8
    if-nez v5, :cond_5

    .line 524
    const/16 v4, 0xc

    goto :goto_1

    .line 546
    .restart local v6    # "encoding":I
    .restart local v17    # "b":Landroid/os/IBinder;
    :cond_9
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 547
    .local v16, "session":[I
    const/4 v2, 0x0

    aput p5, v16, v2

    .line 549
    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/media/AudioTrack;->mSampleRate:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v16}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I

    move-result v18

    .line 552
    .local v18, "initResult":I
    if-eqz v18, :cond_a

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error code "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " when initializing AudioTrack."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 575
    :goto_2
    return-void

    .line 557
    :cond_a
    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 560
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v20

    .line 561
    .local v20, "packageName":Ljava/lang/String;
    const-string v2, "android.media.AudioTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bufferSizeInBytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSampleRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-eqz v20, :cond_b

    new-instance v2, Ljava/lang/String;

    const-string v7, "com.tencent.mm"

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v7, 0x3e80

    if-ne v2, v7, :cond_b

    const/16 v2, 0x5080

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 565
    const-string/jumbo v2, "wechat16k=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 570
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_c

    .line 571
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_2

    .line 567
    :cond_b
    const-string/jumbo v2, "wechat16k=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_3

    .line 573
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_2
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .prologue
    .line 917
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 922
    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 923
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    .line 926
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 927
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 928
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 5
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v3, 0x1

    .line 791
    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_0

    const v2, 0x2ee00

    if-le p1, v2, :cond_1

    .line 792
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Hz is not a supported sample rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 799
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 801
    sparse-switch p2, :sswitch_data_0

    .line 814
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 815
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 826
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 827
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_5

    .line 829
    const/16 v1, 0xff

    .line 830
    .local v1, "indexMask":I
    and-int/lit16 v2, p3, -0x100

    if-eqz v2, :cond_4

    .line 831
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 805
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 806
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 810
    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 811
    const/16 v2, 0xc

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 818
    :cond_2
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 822
    :cond_3
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 823
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 834
    .restart local v1    # "indexMask":I
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 835
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_7

    .line 836
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 844
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_5
    if-ne p4, v3, :cond_6

    .line 845
    const/4 p4, 0x2

    .line 848
    :cond_6
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 849
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 837
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_7
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_5

    .line 838
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_8
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 855
    if-eq p5, v3, :cond_9

    if-nez p5, :cond_a

    :cond_9
    if-eq p5, v3, :cond_b

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 857
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_b
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 860
    return-void

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    .prologue
    .line 2423
    iget-object v5, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 2424
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 2425
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2426
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2427
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2428
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2429
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2430
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2425
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2433
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 1364
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1367
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 1368
    const/4 p0, 0x0

    .line 1372
    :cond_1
    :goto_0
    return p0

    .line 1369
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1370
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 973
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v1, -0x2

    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 1198
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1199
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1223
    :cond_0
    :goto_0
    return v1

    .line 1191
    :sswitch_0
    const/4 v0, 0x1

    .line 1206
    :goto_1
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1207
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    :sswitch_1
    const/4 v0, 0x2

    .line 1196
    goto :goto_1

    .line 1202
    :cond_1
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_1

    .line 1212
    :cond_2
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_3

    const v2, 0x2ee00

    if-le p0, v2, :cond_4

    .line 1213
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1218
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 1219
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1220
    const/4 v1, -0x1

    goto :goto_0

    .line 1188
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1163
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 8
    .param p0, "channelConfig"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 869
    and-int/lit16 v5, p0, 0x1cfc

    if-eq v5, p0, :cond_0

    .line 870
    const-string v5, "Channel configuration features unsupported channels"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 903
    :goto_0
    return v4

    .line 873
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 874
    .local v1, "channelCount":I
    if-le v1, v7, :cond_1

    .line 875
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel configuration contains too many channels "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_1
    const/16 v2, 0xc

    .line 884
    .local v2, "frontPair":I
    and-int/lit8 v5, p0, 0xc

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    .line 885
    const-string v5, "Front channels must be present in multichannel configurations"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_2
    const/16 v0, 0xc0

    .line 890
    .local v0, "backPair":I
    and-int/lit16 v5, p0, 0xc0

    if-eqz v5, :cond_3

    .line 891
    and-int/lit16 v5, p0, 0xc0

    const/16 v6, 0xc0

    if-eq v5, v6, :cond_3

    .line 892
    const-string v5, "Rear channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_3
    const/16 v3, 0x1800

    .line 898
    .local v3, "sidePair":I
    and-int/lit16 v5, p0, 0x1800

    if-eqz v5, :cond_4

    and-int/lit16 v5, p0, 0x1800

    const/16 v6, 0x1800

    if-eq v5, v6, :cond_4

    .line 900
    const-string v5, "Side channels can\'t be used independently"

    invoke-static {v5}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1662
    iget-object v4, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return v3

    .line 1666
    :cond_1
    :try_start_0
    iget v4, p0, Landroid/media/AudioTrack;->mStreamType:I

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v2

    .line 1667
    .local v2, "usage":I
    iget-object v4, p0, Landroid/media/AudioTrack;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1669
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1670
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2677
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2681
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2571
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 2572
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return-void

    .line 2576
    :cond_1
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_2

    .line 2577
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    goto :goto_0

    .line 2580
    :cond_2
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2581
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_0

    .line 2582
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2583
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 2584
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2585
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2390
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2391
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2392
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2393
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2395
    :cond_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_2

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    monitor-exit v1

    .line 2400
    :cond_1
    return-void

    .line 2395
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 2398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 2260
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2261
    const/4 v0, -0x3

    .line 2263
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 949
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1745
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1747
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1749
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 1752
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 1005
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 1029
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 1038
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1041
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1042
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1044
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1045
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1047
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1156
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1112
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 1121
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1077
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    .line 997
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 1129
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 2329
    monitor-enter p0

    .line 2330
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 2331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2356
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2357
    .local v0, "deviceId":I
    if-nez v0, :cond_1

    .line 2367
    :cond_0
    :goto_0
    return-object v3

    .line 2360
    :cond_1
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 2362
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 2363
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 2364
    aget-object v3, v1, v2

    goto :goto_0

    .line 2362
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1066
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    if-nez p1, :cond_0

    .line 1279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1282
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [J

    .line 1283
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1284
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 1289
    :goto_0
    return v2

    .line 1287
    :cond_1
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1288
    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    .line 1289
    goto :goto_0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    .line 1320
    if-nez p1, :cond_0

    .line 1321
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1324
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1325
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1326
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1327
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1328
    return v1
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1716
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1717
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1722
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1723
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1724
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1725
    monitor-exit v1

    .line 1726
    return-void

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1625
    iget v3, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1626
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "play() called on uninitialized AudioTrack."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1628
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1629
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1631
    :cond_1
    iget-object v4, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1633
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1634
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/4 v1, 0x0

    .line 1636
    .local v1, "isVoipApp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1637
    if-eqz v2, :cond_4

    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1638
    const/4 v1, 0x1

    .line 1642
    :cond_2
    if-eqz v1, :cond_5

    .line 1643
    const-string/jumbo v3, "isVoipApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1648
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1649
    if-eqz v2, :cond_6

    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1650
    const-string/jumbo v3, "isLakalKindApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1656
    :cond_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1657
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1658
    monitor-exit v4

    .line 1659
    return-void

    .line 1636
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1645
    :cond_5
    const-string/jumbo v3, "isVoipApp=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1658
    .end local v0    # "i":I
    .end local v1    # "isVoipApp":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1648
    .restart local v0    # "i":I
    .restart local v1    # "isVoipApp":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 938
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 944
    return-void

    .line 939
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2232
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 2233
    :cond_0
    const/4 v0, -0x3

    .line 2235
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;

    .prologue
    .line 2408
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2409
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2412
    :cond_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2413
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2415
    :cond_1
    monitor-exit v1

    .line 2416
    return-void

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 3
    .param p1, "level"    # F

    .prologue
    const/4 v1, 0x0

    .line 2285
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2293
    :cond_0
    :goto_0
    return v1

    .line 2288
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_2

    .line 2289
    const/4 v1, -0x3

    goto :goto_0

    .line 2291
    :cond_2
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 2292
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2293
    .local v0, "err":I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    .line 1570
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1572
    :cond_0
    const/4 v0, -0x3

    .line 1580
    :goto_0
    return v0

    .line 1574
    :cond_1
    if-nez p3, :cond_3

    .line 1580
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0

    .line 1576
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_4

    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    .line 1578
    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1488
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1489
    const/4 v0, -0x3

    .line 1491
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    .line 1528
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1530
    :cond_0
    const/4 v0, -0x3

    .line 1535
    :goto_0
    return v0

    .line 1532
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 1533
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1535
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1471
    if-nez p1, :cond_0

    .line 1472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1475
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 1342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1343
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1360
    :goto_0
    return-void

    .line 1358
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 1446
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1447
    const/4 v0, -0x3

    .line 1452
    :goto_0
    return v0

    .line 1449
    :cond_0
    if-gtz p1, :cond_1

    .line 1450
    const/4 v0, -0x2

    goto :goto_0

    .line 1452
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1502
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1503
    const/4 v0, -0x3

    .line 1505
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 2311
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2321
    :goto_0
    return v0

    .line 2314
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2315
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2316
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2317
    monitor-enter p0

    .line 2318
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2319
    monitor-exit p0

    :cond_2
    move v0, v1

    .line 2321
    goto :goto_0

    .line 2319
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1592
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1593
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F

    .prologue
    const/4 v0, 0x0

    .line 1392
    invoke-direct {p0}, Landroid/media/AudioTrack;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    :goto_0
    return v0

    .line 1395
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 1396
    const/4 v0, -0x3

    goto :goto_0

    .line 1399
    :cond_1
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 1400
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1402
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    goto :goto_0
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .prologue
    .line 1423
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1685
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v2, v3, :cond_0

    .line 1686
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stop() called on uninitialized AudioTrack."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1690
    :cond_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1692
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1694
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1695
    const-string/jumbo v2, "isLakalKindApp=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1700
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1701
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1702
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1703
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 1704
    monitor-exit v3

    .line 1705
    return-void

    .line 1693
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1704
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 2078
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 2079
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const/4 v6, -0x3

    .line 2116
    :cond_0
    :goto_0
    return v6

    .line 2083
    :cond_1
    if-eqz p3, :cond_2

    if-eq p3, v7, :cond_2

    .line 2084
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2088
    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p2, v0, :cond_4

    .line 2089
    :cond_3
    const-string v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2093
    :cond_4
    const/4 v6, 0x0

    .line 2094
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2095
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    .line 2105
    :goto_1
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    if-lez v6, :cond_6

    .line 2109
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2112
    :cond_6
    if-lez v6, :cond_0

    .line 2113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 2099
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_1
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x2

    const/4 v0, -0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2145
    iget v4, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v4, :cond_1

    .line 2146
    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_0
    :goto_0
    return v0

    .line 2150
    :cond_1
    if-eqz p3, :cond_2

    if-eq p3, v6, :cond_2

    .line 2151
    const-string v3, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2152
    goto :goto_0

    .line 2155
    :cond_2
    iget v4, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v4, v6, :cond_3

    .line 2156
    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2160
    :cond_3
    iget-object v4, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_4

    .line 2161
    const-string v2, "android.media.AudioTrack"

    const-string v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    goto :goto_0

    .line 2165
    :cond_4
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le p2, v4, :cond_6

    .line 2166
    :cond_5
    const-string v3, "android.media.AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2167
    goto :goto_0

    .line 2171
    :cond_6
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_7

    .line 2172
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2173
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2174
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v4, 0x55550001

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2175
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2176
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2177
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2178
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2182
    :cond_7
    const/4 v0, 0x0

    .line 2183
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_9

    .line 2184
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v2, v4, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2185
    if-gez v0, :cond_8

    .line 2186
    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2188
    iput v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    goto/16 :goto_0

    .line 2191
    :cond_8
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_9

    .line 2192
    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2193
    goto/16 :goto_0

    .line 2198
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2199
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2200
    if-gez v0, :cond_a

    .line 2201
    const-string v2, "android.media.AudioTrack"

    const-string v4, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2203
    iput v3, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    goto/16 :goto_0

    .line 2207
    :cond_a
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2208
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_0

    .line 2209
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 1827
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1828
    :cond_0
    const/4 v6, -0x3

    .line 1852
    :cond_1
    :goto_0
    return v6

    .line 1831
    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    .line 1832
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1836
    :cond_3
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 1842
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .line 1845
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-lez v6, :cond_1

    .line 1849
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 1842
    .end local v6    # "ret":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v6, -0x3

    const/4 v7, 0x1

    .line 2003
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 2004
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_0
    :goto_0
    return v6

    .line 2008
    :cond_1
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 2009
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2013
    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    .line 2014
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 2015
    goto :goto_0

    .line 2018
    :cond_3
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v1, p2, p3

    if-ltz v1, :cond_4

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_5

    .line 2021
    :cond_4
    const-string v1, "android.media.AudioTrack"

    const-string v2, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 2022
    goto :goto_0

    .line 2025
    :cond_5
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_6

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .line 2028
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-lez v6, :cond_0

    .line 2032
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 2025
    .end local v6    # "ret":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1886
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v7, 0x1

    .line 1927
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1928
    :cond_0
    const/4 v6, -0x3

    .line 1952
    :cond_1
    :goto_0
    return v6

    .line 1931
    :cond_2
    if-eqz p4, :cond_3

    if-eq p4, v7, :cond_3

    .line 1932
    const-string v0, "android.media.AudioTrack"

    const-string v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1936
    :cond_3
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 1942
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v5, v7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    .line 1945
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-lez v6, :cond_1

    .line 1949
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 1942
    .end local v6    # "ret":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method
