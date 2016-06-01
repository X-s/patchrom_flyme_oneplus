.class public Lcom/waves/maxxaudio/MaxxAudioService;
.super Landroid/app/Service;
.source "MaxxAudioService.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;
.implements Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;
    }
.end annotation


# static fields
.field private static final DEFAULT_MPS_PATH:Ljava/lang/String; = "/vendor/etc/"

.field private static final FROM_FILE_PATH:Ljava/lang/String; = "/vendor/etc/default.mps"

.field private static final MPS_FILE_EXTENTION:Ljava/lang/String; = ".mps"

.field public static final MSG_MEIDA_SERVER_DIED:I = 0x6

.field public static final MSG_SET_ENABLED:I = 0x1

.field public static final MSG_SET_MEDIA_TYPE:I = 0x0

.field public static final MSG_SET_PARAM:I = 0x3

.field private static final START_FOREGROUND_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MaxxAudioService"

.field private static final TO_FILE_PATH:Ljava/lang/String; = "/vendor/etc/default.mps"

.field private static mDefaultEarphoneTypeFileNames:[Ljava/lang/String;

.field private static mDefaultEarphoneTypeNames:[Ljava/lang/String;

.field private static mStartedTest:Z

.field public static mType:Ljava/lang/String;

.field public static mValueArray:[D

.field public static mValueEQ:[[D


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mClient:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

.field public mHandler:Landroid/os/Handler;

.field private mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    sput-boolean v2, Lcom/waves/maxxaudio/MaxxAudioService;->mStartedTest:Z

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [D

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    .line 49
    const/16 v0, 0x14

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioService;->mValueEQ:[[D

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1+ original"

    aput-object v1, v0, v2

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1+ original"

    aput-object v1, v0, v2

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeFileNames:[Ljava/lang/String;

    .line 53
    const-string v0, "original"

    sput-object v0, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    .line 773
    const-string v0, "MaxxAudio_JNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;-><init>(Lcom/waves/maxxaudio/MaxxAudioService;)V

    iput-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mClient:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    .line 42
    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .line 43
    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mStarted:Z

    .line 459
    new-instance v0, Lcom/waves/maxxaudio/MaxxAudioService$2;

    invoke-direct {v0, p0}, Lcom/waves/maxxaudio/MaxxAudioService$2;-><init>(Lcom/waves/maxxaudio/MaxxAudioService;)V

    iput-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native EffectClearParamsForMediaType(I)Z
.end method

.method private static native EffectCreate()Z
.end method

.method private static native EffectGetParam(I)D
.end method

.method private static native EffectGetParamsArray(I[I[D)Z
.end method

.method private static native EffectLoadPresets([B)Z
.end method

.method private static native EffectRelease()Z
.end method

.method private static native EffectSavePresets([B)Z
.end method

.method private static native EffectSetCustomOutputMode(II)Z
.end method

.method private static native EffectSetEnabled(Z)Z
.end method

.method private static native EffectSetMediaType(I)Z
.end method

.method private static native EffectSetOutputMode(I)Z
.end method

.method private static native EffectSetParam(ID)Z
.end method

.method private static native EffectSetPresetParam(IDI)Z
.end method

.method private static native EffectSetRecording(Z)Z
.end method

.method private static native EffectSetSmoothing(II)Z
.end method

.method private SetMediaType(I)V
    .locals 2
    .param p1, "in_nMediaType"    # I

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetMediaType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 530
    invoke-static {p1}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetMediaType(I)Z

    .line 531
    return-void
.end method

.method private StartService()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 402
    const-string v5, "Entry point StartService"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 404
    sget-boolean v5, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    if-eqz v5, :cond_0

    .line 405
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetOutputMode(I)Z

    .line 407
    :cond_0
    const-string v5, "MaxxAudioService.StartService 0"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "type":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    sget-object v5, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 413
    :cond_1
    const-string v5, "MaxxAudioService.StartService 1"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "checked":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 416
    sget-object v5, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    const/4 v0, 0x1

    .line 418
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 415
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_3
    const-string v5, "MaxxAudioService.StartService 2"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 423
    if-nez v0, :cond_4

    .line 424
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-string v6, "default"

    iput-object v6, v5, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 426
    :cond_4
    const-string v5, "MaxxAudioService.StartService 3"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->onLoadPresets()Z

    move-result v3

    .line 430
    .local v3, "retVal":Z
    const-string v5, "EffectLoadPresets failed!"

    invoke-static {v3, v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Assert(ZLjava/lang/String;)V

    .line 431
    const-string v5, "MaxxAudioService.StartService 4"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 435
    const-string v5, "MaxxAudioService.StartService 5"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v2

    .line 438
    .local v2, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    const-string v5, "MaxxAudioService.StartService 6"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mClient:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    invoke-virtual {v2, v5}, Lcom/waves/maxxaudio/MaxxAudioManager;->setClient(Lcom/waves/maxxaudio/IWavesFXClient;)V

    .line 441
    const-string v5, "MaxxAudioService.StartService 7"

    invoke-static {v5}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncInitUsedDataRunnable()V

    .line 444
    const/16 v5, 0x27

    invoke-virtual {v2, v5, v8}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 445
    const/16 v5, 0x8d

    invoke-virtual {v2, v5, v8}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 446
    return-void
.end method

.method static synthetic access$000(Lcom/waves/maxxaudio/MaxxAudioService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/waves/maxxaudio/MaxxAudioService;->SetMediaType(I)V

    return-void
.end method

.method static synthetic access$100(IDI)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # I

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetPresetParam(IDI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/waves/maxxaudio/MaxxAudioService;)Lcom/waves/maxxaudio/WavesFXSharedPreference;
    .locals 1
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxAudioService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/waves/maxxaudio/MaxxAudioService;Lcom/waves/maxxaudio/WavesFXSharedPreference;)Lcom/waves/maxxaudio/WavesFXSharedPreference;
    .locals 0
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxAudioService;
    .param p1, "x1"    # Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/waves/maxxaudio/MaxxAudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxAudioService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectRelease()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectCreate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/waves/maxxaudio/MaxxAudioService;)V
    .locals 0
    .param p0, "x0"    # Lcom/waves/maxxaudio/MaxxAudioService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->StartService()V

    return-void
.end method

.method public static deleteMPSFile()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/default.mps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .local v0, "tofile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onClearMediaType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 732
    invoke-static {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectClearParamsForMediaType(I)Z

    move-result v0

    return v0
.end method

.method public static onGetMaxxValue()V
    .locals 6

    .prologue
    const/4 v3, 0x6

    .line 534
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 538
    .local v1, "mParamArray":[I
    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    invoke-static {v3, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectGetParamsArray(I[I[D)Z

    .line 540
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 541
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 542
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    .line 543
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 544
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x4

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 545
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v3, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v4, 0x5

    aget-wide v4, v3, v4

    double-to-float v3, v4

    iput v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 547
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 548
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    invoke-static {v0}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandGainId(I)I

    move-result v3

    invoke-static {v3}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectGetParam(I)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_0
    return-void

    .line 534
    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x3
        0x97
        0xa
        0xe
    .end array-data
.end method

.method public static onGetMaxxValuePart()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 554
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 558
    .local v0, "mParamArray":[I
    sget-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    invoke-static {v2, v0, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectGetParamsArray(I[I[D)Z

    .line 560
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 561
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 562
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    .line 563
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 564
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 565
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mValueArray:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    double-to-float v2, v2

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 572
    return-void

    .line 554
    :array_0
    .array-data 4
        0x4
        0x7
        0x3
        0x97
        0xa
        0xe
    .end array-data
.end method

.method public static onGetParam(I)D
    .locals 2
    .param p0, "param"    # I

    .prologue
    .line 594
    invoke-static {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectGetParam(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private onLoadPresets()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 598
    const-string v9, "MaxxAudioService.this.onLoadPresets"

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 599
    const/4 v6, 0x0

    .line 600
    .local v6, "fromfile":Ljava/io/File;
    sget-boolean v9, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v9, :cond_2

    .line 601
    new-instance v6, Ljava/io/File;

    .end local v6    # "fromfile":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/vendor/etc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeFileNames:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .restart local v6    # "fromfile":Ljava/io/File;
    :goto_0
    new-instance v8, Ljava/io/File;

    const-string v9, "/vendor/etc/default.mps"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v8, "tofile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 611
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 614
    .local v4, "fosfrom":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 615
    .local v5, "fosto":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1b6

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 619
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 622
    .local v0, "bt":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_3

    .line 623
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 624
    const-string v9, ""

    const-string v10, "0509--onLoadPresets()--if--copy succeed"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 628
    .end local v0    # "bt":[B
    .end local v1    # "c":I
    .end local v4    # "fosfrom":Ljava/io/FileInputStream;
    .end local v5    # "fosto":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 629
    .local v3, "ex":Ljava/lang/Exception;
    const-string v9, "Copy file Error!"

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 633
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    if-nez v9, :cond_1

    .line 634
    new-instance v9, Lcom/waves/maxxaudio/WavesFXSharedPreference;

    iget-object v10, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    const-string v11, "com_oneplus_tuner_wavesfx"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/waves/maxxaudio/WavesFXSharedPreference;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v9, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .line 640
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MaxxAudioService.this.onLoadPresets tofile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectLoadPresets([B)Z

    move-result v7

    .line 642
    .local v7, "ren":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MaxxAudioService.this.onLoadPresets ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 644
    iget-object v9, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    invoke-virtual {v9}, Lcom/waves/maxxaudio/WavesFXSharedPreference;->isEnabled()Z

    move-result v2

    .line 646
    .local v2, "enabled":Z
    new-instance v9, Lcom/waves/maxxaudio/MaxxAudioService$3;

    invoke-direct {v9, p0, v2}, Lcom/waves/maxxaudio/MaxxAudioService$3;-><init>(Lcom/waves/maxxaudio/MaxxAudioService;Z)V

    invoke-static {v9}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncRunnable(Ljava/lang/Runnable;)V

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binbin 1 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v10}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->onGetMaxxValuePart()V

    .line 664
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "binbin 2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v10}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 667
    return v7

    .line 604
    .end local v2    # "enabled":Z
    .end local v7    # "ren":Z
    .end local v8    # "tofile":Ljava/io/File;
    :cond_2
    new-instance v6, Ljava/io/File;

    .end local v6    # "fromfile":Ljava/io/File;
    const-string v9, "/vendor/etc/"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6    # "fromfile":Ljava/io/File;
    goto/16 :goto_0

    .line 626
    .restart local v0    # "bt":[B
    .restart local v1    # "c":I
    .restart local v4    # "fosfrom":Ljava/io/FileInputStream;
    .restart local v5    # "fosto":Ljava/io/FileOutputStream;
    .restart local v8    # "tofile":Ljava/io/File;
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 627
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private onLoadPresets(Ljava/io/File;Z)Z
    .locals 11
    .param p1, "fromfile"    # Ljava/io/File;
    .param p2, "enforce"    # Z

    .prologue
    .line 671
    new-instance v6, Ljava/io/File;

    const-string v7, "/vendor/etc/default.mps"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v6, "tofile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_1

    .line 675
    :cond_0
    :try_start_0
    const-string v7, ""

    const-string v8, "0509--onLoadPresets(*,*)--if"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 679
    .local v3, "fosfrom":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 680
    .local v4, "fosto":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b6

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 684
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 687
    .local v0, "bt":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_2

    .line 688
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 689
    const-string v7, ""

    const-string v8, "0509--onLoadPresets(*,*)--if--copy--succedd"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v0    # "bt":[B
    .end local v1    # "c":I
    .end local v3    # "fosfrom":Ljava/io/FileInputStream;
    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 694
    .local v2, "ex":Ljava/lang/Exception;
    const-string v7, "Copy file Error!"

    invoke-static {v7}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 695
    const-string v7, ""

    const-string v8, "0509--onLoadPresets(*,*)--Copy file Error!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binbin 3 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v8}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectLoadPresets([B)Z

    move-result v5

    .line 706
    .local v5, "ren":Z
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->onGetMaxxValuePart()V

    .line 708
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binbin 4 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v8}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 711
    return v5

    .line 691
    .end local v5    # "ren":Z
    .restart local v0    # "bt":[B
    .restart local v1    # "c":I
    .restart local v3    # "fosfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 692
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public SetSmoothing(II)Z
    .locals 1
    .param p1, "smoothingModeType"    # I
    .param p2, "smoothingModeState"    # I

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "smoothingFlag":Z
    invoke-static {p1, p2}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetSmoothing(II)Z

    move-result v0

    .line 524
    return v0
.end method

.method public initMediaType()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/waves/maxxaudio/MaxxAudioService;->SetMediaType(I)V

    .line 472
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mClient:Lcom/waves/maxxaudio/MaxxAudioService$WavesFXServiceClient;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 320
    const-string v1, "Entry point onCreate"

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 322
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/waves/maxxaudio/MaxxAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 323
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    .line 324
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.audiotuner.common"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    .line 325
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.audiotuner.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    .line 327
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeFileNames:[Ljava/lang/String;

    .line 332
    invoke-static {p0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->registerHeadsetTypeChangedListener(Lcom/oneplus/tuner/listener/HeadsetTypeChangedListener;)V

    .line 333
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    .line 335
    const-string v1, ""

    sget-object v2, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    sget-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sput-object v1, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    if-nez v1, :cond_1

    .line 340
    new-instance v1, Lcom/waves/maxxaudio/WavesFXSharedPreference;

    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    const-string v3, "com_oneplus_tuner_wavesfx"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waves/maxxaudio/WavesFXSharedPreference;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .line 346
    :cond_1
    new-instance v1, Lcom/waves/maxxaudio/MaxxAudioService$1;

    invoke-direct {v1, p0}, Lcom/waves/maxxaudio/MaxxAudioService$1;-><init>(Lcom/waves/maxxaudio/MaxxAudioService;)V

    invoke-static {v1}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 371
    const-string v1, "EffectCreate"

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectCreate()Z

    move-result v0

    .line 373
    .local v0, "retVal":Z
    const-string v1, "Effect create failed!"

    invoke-static {v0, v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Assert(ZLjava/lang/String;)V

    .line 374
    if-eqz v0, :cond_2

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 380
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 451
    const-string v1, "Entry point onDestroy"

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->unregisterHeadsetTypeChangedListener()V

    .line 455
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectRelease()Z

    move-result v0

    .line 456
    .local v0, "retVal":Z
    const-string v1, "EffectRelease failed!"

    invoke-static {v0, v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Assert(ZLjava/lang/String;)V

    .line 458
    return-void
.end method

.method public onHeadsetPlugged()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 781
    return-void
.end method

.method public onHeadsetUnplugged()V
    .locals 2

    .prologue
    .line 786
    const-string v0, "0710"

    const-string v1, "onHeadsetUnplugged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    .line 788
    return-void
.end method

.method public onSavePresets()V
    .locals 2

    .prologue
    .line 725
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/default.mps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "tofile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSavePresets([B)Z

    .line 729
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 385
    const-string v0, "Entry point onStartCommand"

    invoke-static {v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 387
    iget-boolean v0, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mStarted:Z

    if-nez v0, :cond_0

    .line 388
    const-string v0, "WavesFXService starting!"

    invoke-static {v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->StartService()V

    .line 390
    iput-boolean v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mStarted:Z

    .line 396
    :goto_0
    return v1

    .line 393
    :cond_0
    const-string v0, "WavesFXService allready running!"

    invoke-static {v0}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTypeChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "checkedF":Z
    const/4 v1, 0x0

    .line 215
    .local v1, "checkedC":Z
    move-object v5, p1

    .line 216
    .local v5, "fname":Ljava/lang/String;
    const-string v10, "0801"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTypeChanged--fname = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c05aa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 218
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c05a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 219
    sget-boolean v10, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-eqz v10, :cond_0

    .line 220
    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetCustomOutputMode(II)Z

    .line 248
    :cond_0
    :goto_0
    const-string v10, "0801"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onTypeChanged--type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_a

    .line 250
    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 251
    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeFileNames:[Ljava/lang/String;

    aget-object v5, v10, v6

    .line 252
    const/4 v1, 0x1

    .line 254
    :cond_1
    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mDefaultEarphoneTypeNames:[Ljava/lang/String;

    aget-object v10, v10, v6

    sget-object v11, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 255
    const/4 v2, 0x1

    .line 249
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 222
    .end local v6    # "i":I
    :cond_3
    const-string v10, "Feat. JBL E1+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c05a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c05a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    sget-boolean v10, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-eqz v10, :cond_0

    .line 225
    const/4 v10, 0x2

    const/16 v11, 0x64

    invoke-static {v10, v11}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetCustomOutputMode(II)Z

    goto :goto_0

    .line 227
    :cond_5
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c05a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 228
    const-string v10, "0801"

    const-string v11, "onTypeChanged--Gold Bullet  "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v8, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;

    iget-object v10, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;-><init>(Landroid/content/Context;)V

    .line 231
    .local v8, "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 314
    .end local v8    # "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    :cond_6
    :goto_2
    return-void

    .line 235
    .restart local v8    # "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    :cond_7
    invoke-virtual {p0}, Lcom/waves/maxxaudio/MaxxAudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getDefaultCommonStyleSoundEffects_001()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 236
    .local v0, "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    const-string v10, "0801"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bean is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v10, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    const-string v11, "Gold Bullet"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 238
    move-object v9, v0

    .line 239
    .local v9, "tempBean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    const-string v10, "0801"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tempBean is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v10, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-direct {v11, v9}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;-><init>(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    invoke-virtual {v8, v10, v11}, Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;->startLoad(Landroid/os/Handler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    goto :goto_3

    .line 244
    .end local v0    # "bean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "model":Lcom/oppo/tribune/packshow/HandlePackLoadAndUseModel;
    .end local v9    # "tempBean":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_9
    sget-boolean v10, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14049:Z

    if-eqz v10, :cond_0

    .line 245
    const/4 v10, 0x2

    const/16 v11, 0x65

    invoke-static {v10, v11}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetCustomOutputMode(II)Z

    goto/16 :goto_0

    .line 259
    .restart local v6    # "i":I
    :cond_a
    sget-object v10, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 263
    sput-object p1, Lcom/waves/maxxaudio/MaxxAudioService;->mType:Ljava/lang/String;

    .line 265
    if-nez v2, :cond_b

    if-eqz v1, :cond_6

    .line 269
    :cond_b
    const/4 v4, 0x0

    .line 275
    .local v4, "fileName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/vendor/etc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".mps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 277
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 280
    const-string v10, ""

    const-string v11, "0429--MaxxAudioService--onTypeChanged--else--if (file.exists())"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "binbin file = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 284
    sget-boolean v10, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v10, :cond_c

    .line 285
    const/4 v10, 0x1

    invoke-direct {p0, v3, v10}, Lcom/waves/maxxaudio/MaxxAudioService;->onLoadPresets(Ljava/io/File;Z)Z

    .line 288
    :cond_c
    sget-object v10, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "default"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncEnforceInitUsedDataRunnable()V

    goto/16 :goto_2

    .line 300
    :cond_d
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    const-string v10, "/vendor/etc/default.mps"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 304
    const-string v10, ""

    const-string v11, "0429--MaxxAudioService--onTypeChanged--else--"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-boolean v10, Lcom/oneplus/tuner/utillty/TunerConstant;->TUNER_FUTURE_FLAG_14001:Z

    if-eqz v10, :cond_e

    .line 306
    const/4 v10, 0x1

    invoke-direct {p0, v3, v10}, Lcom/waves/maxxaudio/MaxxAudioService;->onLoadPresets(Ljava/io/File;Z)Z

    .line 308
    :cond_e
    sget-object v10, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-string v11, "default"

    iput-object v11, v10, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncEnforceInitUsedDataRunnable()V

    goto/16 :goto_2
.end method

.method public setEnabled(Z)Z
    .locals 5
    .param p1, "in_bEnabled"    # Z

    .prologue
    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HeadsetPlugReceiver.mHeadsetPlugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waves/maxxaudio/WavesFXLogger;->Log(Ljava/lang/String;)V

    .line 479
    const-string v1, "0710"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HeadsetPlugReceiver.mHeadsetPlugged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/oneplus/tuner/listener/HeadsetPlugReceiver;->mHeadsetPlugged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    .line 504
    .local v0, "retVal":Z
    invoke-static {p1}, Lcom/waves/maxxaudio/MaxxAudioService;->EffectSetEnabled(Z)Z

    move-result v0

    .line 506
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    if-nez v1, :cond_0

    .line 507
    new-instance v1, Lcom/waves/maxxaudio/WavesFXSharedPreference;

    iget-object v2, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mApplicationContext:Landroid/content/Context;

    const-string v3, "com_oneplus_tuner_wavesfx"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waves/maxxaudio/WavesFXSharedPreference;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/waves/maxxaudio/MaxxAudioService;->mSharedPreferences:Lcom/waves/maxxaudio/WavesFXSharedPreference;

    invoke-virtual {v1, p1}, Lcom/waves/maxxaudio/WavesFXSharedPreference;->setEnabled(Z)V

    .line 518
    return v0
.end method
