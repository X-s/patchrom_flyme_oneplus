.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$Builder;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRecord$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 18
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 207
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 211
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 222
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 970
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1297
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_0
    if-nez p2, :cond_1

    .line 317
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal null AudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 322
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 326
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 327
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 328
    .local v13, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 329
    .local v17, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 331
    .local v16, "tag":Ljava/lang/String;
    const-string v2, "fixedVolume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 333
    const-string v2, "android.media.AudioRecord"

    const-string v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 338
    .end local v16    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 339
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 344
    .end local v13    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v17    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    const/4 v15, 0x0

    .line 345
    .local v15, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v15

    .line 356
    :cond_5
    :goto_2
    const/4 v12, 0x1

    .line 357
    .local v12, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v12

    .line 362
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v12}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 369
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 378
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 380
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 381
    .local v10, "session":[I
    const/4 v2, 0x0

    aput p4, v10, v2

    .line 384
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioRecord;->mSampleRate:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I

    move-result v14

    .line 388
    .local v14, "initResult":I
    if-eqz v14, :cond_c

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing native AudioRecord object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 396
    :goto_4
    return-void

    .line 341
    .end local v10    # "session":[I
    .end local v12    # "encoding":I
    .end local v14    # "initResult":I
    .end local v15    # "rate":I
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_1

    .line 350
    .restart local v15    # "rate":I
    :cond_a
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v15

    .line 351
    if-gtz v15, :cond_5

    .line 352
    const v15, 0xac44

    goto/16 :goto_2

    .line 373
    .restart local v12    # "encoding":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v2, :cond_8

    .line 374
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    goto/16 :goto_3

    .line 393
    .restart local v10    # "session":[I
    .restart local v14    # "initResult":I
    :cond_c
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 395
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    goto :goto_4
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 675
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 677
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 678
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 682
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 625
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 635
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0x2ee00

    if-le p2, v0, :cond_3

    .line 636
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 643
    sparse-switch p3, :sswitch_data_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 662
    :goto_0
    return-void

    .line 656
    :sswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_0

    .line 643
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    .prologue
    .line 1394
    iget-object v5, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1395
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 1396
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1398
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

    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1399
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1400
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1401
    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1396
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1404
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 591
    sparse-switch p0, :sswitch_data_0

    .line 605
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :sswitch_0
    const/16 v0, 0x10

    .line 608
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 611
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 600
    .restart local v0    # "mask":I
    goto :goto_0

    .line 602
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    .line 603
    .restart local v0    # "mask":I
    goto :goto_0

    .line 614
    :cond_1
    return v0

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 863
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 875
    :cond_0
    :goto_0
    return v1

    .line 851
    :sswitch_0
    const/4 v0, 0x1

    .line 867
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 868
    .local v1, "size":I
    if-nez v1, :cond_1

    move v1, v2

    .line 869
    goto :goto_0

    .line 856
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    .line 857
    goto :goto_1

    .line 859
    :sswitch_2
    const/4 v0, 0x6

    .line 860
    goto :goto_1

    .line 871
    .restart local v1    # "size":I
    :cond_1
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 872
    goto :goto_0

    .line 847
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0xfc -> :sswitch_2
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .prologue
    .line 972
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_0

    .line 982
    :goto_0
    return-void

    .line 975
    :cond_0
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 976
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 978
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1605
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1609
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return-void
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_release()V
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1535
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1536
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_2

    .line 1541
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    goto :goto_0

    .line 1545
    :cond_2
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 1546
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1548
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1312
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1313
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1314
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 1317
    :cond_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_2

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    monitor-exit v1

    .line 1322
    :cond_1
    return-void

    .line 1317
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 1320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 705
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 706
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 754
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 757
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_0

    .line 758
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 760
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 761
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 763
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 1455
    monitor-enter p0

    .line 1456
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 791
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 792
    :try_start_0
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v1

    return v0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1278
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    move-result v0

    .line 1279
    .local v0, "deviceId":I
    if-nez v0, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-object v3

    .line 1282
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1284
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1285
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 1286
    aget-object v3, v1, v2

    goto :goto_0

    .line 1284
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 3
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, 0x1

    .line 1183
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v0, :cond_0

    .line 1184
    const/4 v0, -0x3

    .line 1196
    :goto_0
    return v0

    .line 1187
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    .line 1188
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1189
    goto :goto_0

    .line 1192
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    :cond_2
    move v0, v1

    .line 1193
    goto :goto_0

    .line 1196
    :cond_3
    if-nez p3, :cond_4

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public read([BIII)I
    .locals 4
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, 0x1

    .line 1022
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1023
    :cond_0
    const/4 v0, -0x3

    .line 1037
    :goto_0
    return v0

    .line 1026
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1027
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1028
    goto :goto_0

    .line 1031
    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v2, p2, p3

    if-ltz v2, :cond_3

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 1034
    goto :goto_0

    .line 1037
    :cond_4
    if-nez p4, :cond_5

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([FIII)I
    .locals 5
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x2

    const/4 v1, -0x3

    .line 1114
    iget v3, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v3, :cond_0

    .line 1115
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1135
    :goto_0
    return v0

    .line 1119
    :cond_0
    iget v3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 1120
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1121
    goto :goto_0

    .line 1124
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1125
    const-string v0, "android.media.AudioRecord"

    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1126
    goto :goto_0

    .line 1129
    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v1, p2, p3

    if-ltz v1, :cond_3

    add-int v1, p2, p3

    array-length v3, p1

    if-le v1, v3, :cond_4

    :cond_3
    move v0, v2

    .line 1132
    goto :goto_0

    .line 1135
    :cond_4
    if-nez p4, :cond_5

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public read([SIII)I
    .locals 4
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, 0x1

    .line 1076
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1077
    :cond_0
    const/4 v0, -0x3

    .line 1091
    :goto_0
    return v0

    .line 1080
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1081
    const-string v0, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1082
    goto :goto_0

    .line 1085
    :cond_2
    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v2, p2, p3

    if-ltz v2, :cond_3

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 1088
    goto :goto_0

    .line 1091
    :cond_4
    if-nez p4, :cond_5

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 693
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 698
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 699
    return-void

    .line 694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;

    .prologue
    .line 1330
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1331
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 1337
    :cond_0
    monitor-exit v1

    .line 1338
    return-void

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1249
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1250
    const/4 v0, -0x3

    .line 1252
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1415
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1416
    const/4 v0, -0x3

    .line 1418
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 1436
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1447
    :goto_0
    return v0

    .line 1440
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1441
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 1442
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1443
    monitor-enter p0

    .line 1444
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1445
    monitor-exit p0

    :cond_2
    move v0, v1

    .line 1447
    goto :goto_0

    .line 1445
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1209
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1221
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1223
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1225
    if-eqz p1, :cond_1

    .line 1226
    if-eqz p2, :cond_0

    .line 1227
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 1235
    :goto_0
    monitor-exit v1

    .line 1237
    return-void

    .line 1230
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1233
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 897
    const/16 v4, 0x46

    invoke-static {v4}, Landroid/util/SeempLog;->record(I)I

    .line 898
    iget v4, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v4, v5, :cond_0

    .line 899
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 904
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedCTAPermissionControl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 907
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/Permission;

    invoke-direct {v2, v0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 908
    .local v2, "requester":Landroid/util/Permission;
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v3

    .line 909
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 910
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "permission denied"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "requester":Landroid/util/Permission;
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "android.media.AudioRecord"

    const-string/jumbo v5, "request permission RECORD_AUDIO fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 920
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v5, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 921
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v4, v6}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v4

    if-nez v4, :cond_2

    .line 922
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 923
    const/4 v4, 0x3

    iput v4, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 925
    :cond_2
    monitor-exit v5

    .line 926
    return-void

    .line 925
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 937
    const/16 v0, 0x46

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 938
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 945
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 946
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 947
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 949
    :cond_1
    monitor-exit v1

    .line 950
    return-void

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 958
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 959
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 965
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 966
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 967
    monitor-exit v1

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
