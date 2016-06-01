.class public Lcom/oneplus/tuner/manager/OppoTunerManager;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;,
        Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;,
        Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_LOGIN_SUCCESS:Ljava/lang/String; = "com.oneplus.tunerACTION_LOGIN_SUCCESS"

.field public static final MAXXAUDIO_ACTION:Ljava/lang/String; = "com.waves.maxxaudio.TunerMaxxAudioService.action"

.field private static final TAG:Ljava/lang/String; = "OppoTunerManager"

.field private static mContext:Landroid/content/Context;

.field private static mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

.field private static mDatabaseThread:Landroid/os/HandlerThread;

.field public static mDefaultSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field public static final mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field private static mInited:Z

.field public static final mLocalSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mMainHandler:Landroid/os/Handler;

.field public static final mModelSoundEffects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final mNetSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

.field public static mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

.field private static mSoundEffectDataChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

.field private static mUsedDataChangeRunnable:Ljava/lang/Runnable;

.field public static mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

.field public static final mUserSoundEffects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInitRunnable:Ljava/lang/Runnable;

.field private mIsNeedRefreshTokenFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInited:Z

    .line 50
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mModelSoundEffects:Ljava/util/HashMap;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "oneplus-tuner-database"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseThread:Landroid/os/HandlerThread;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager$1;

    invoke-direct {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mIsNeedRefreshTokenFlag:Z

    .line 305
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager$2;-><init>(Lcom/oneplus/tuner/manager/OppoTunerManager;)V

    iput-object v0, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInitRunnable:Ljava/lang/Runnable;

    .line 464
    sput-object p1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;

    .line 465
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 466
    new-instance v0, Lcom/oneplus/tuner/manager/DatabaseHandler;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    .line 467
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    .line 468
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectDao;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/tuner/providers/SoundEffectDao;-><init>(Landroid/content/Context;Lcom/oneplus/tuner/manager/DatabaseHandler;)V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    .line 476
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInited:Z

    .line 477
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    iget-object v1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postInit(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    return-object v0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->setEffectUsed()V

    return-void
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oneplus/tuner/manager/DatabaseHandler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInited:Z

    return p0
.end method

.method public static add(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 2
    .param p0, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;

    invoke-direct {v1, v0}, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method public static add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;

    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {v0, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public static clearSoundEffectDataChangeListeners()V
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 501
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 519
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    .line 523
    :cond_0
    return-void
.end method

.method public static delete(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 2
    .param p0, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v1, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;

    invoke-direct {v1, v0}, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method public static delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;

    check-cast p0, Ljava/util/ArrayList;

    .end local p0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {v0, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncMainRunnable(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public static getDatabaseHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/tuner/manager/OppoTunerManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mOppoTunerManager is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/tuner/manager/OppoTunerManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 505
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    if-nez v0, :cond_1

    .line 506
    const-class v1, Lcom/oneplus/tuner/manager/OppoTunerManager;

    monitor-enter v1

    .line 507
    :try_start_0
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Lcom/oneplus/tuner/manager/OppoTunerManager;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/manager/OppoTunerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    .line 510
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_1
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mOppoTunerManager:Lcom/oneplus/tuner/manager/OppoTunerManager;

    return-object v0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 537
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mSoundEffectDao is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    return-object v0
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 454
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 455
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 456
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadDefaultEffectsFromXml(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v8, 0x1

    .line 362
    :try_start_0
    sget-object v6, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    sget-object v6, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 367
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 368
    .local v3, "value":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getUsedEffectStyle()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "style":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .local v5, "xmlEventType":I
    if-eq v5, v8, :cond_2

    .line 370
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string v6, "effect"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    const-string v6, "name"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v6, "value"

    invoke-static {p0, v4, v6}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v3}, Lcom/oneplus/tuner/utillty/Utilities;->splitEffects(Ljava/lang/String;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    .line 375
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 376
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 377
    const-string v6, ""

    iput-object v6, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 378
    sget-object v6, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    const/4 v6, 0x1

    iput v6, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 381
    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "style":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "xmlEventType":I
    :catch_0
    move-exception v6

    .line 388
    :cond_2
    return-void
.end method

.method public static loadDefaultEffectsFromXml14001(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v9, 0x1

    .line 424
    :try_start_0
    sget-object v7, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 425
    sget-object v7, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 429
    .local v5, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 430
    .local v3, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getUsedEffectStyle()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "style":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, "xmlEventType":I
    if-eq v6, v9, :cond_2

    .line 432
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string v7, "effect"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 434
    const-string v7, "name"

    invoke-static {p0, v5, v7}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    const-string v7, "value"

    invoke-static {p0, v5, v7}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    const-string v7, "describe"

    invoke-static {p0, v5, v7}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-static {v4}, Lcom/oneplus/tuner/utillty/Utilities;->splitEffects(Ljava/lang/String;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    .line 438
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 439
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 440
    iput-object v3, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 441
    sget-object v7, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 443
    const/4 v7, 0x1

    iput v7, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 444
    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "style":Ljava/lang/String;
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v6    # "xmlEventType":I
    :catch_0
    move-exception v7

    .line 450
    :cond_2
    return-void
.end method

.method public static loadDefaultEffectsFromXml14049(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v10, 0x1

    .line 392
    :try_start_0
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 393
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 397
    .local v6, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 399
    .local v4, "summary":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getUsedEffectStyle()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "style":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "xmlEventType":I
    if-eq v7, v10, :cond_2

    .line 401
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const-string v8, "effect"

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 403
    const-string v8, "name"

    invoke-static {p0, v6, v8}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const-string v8, "value"

    invoke-static {p0, v6, v8}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    const-string v8, "mediatypenumber"

    invoke-static {p0, v6, v8}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 406
    .local v1, "mediaTypeNumber":I
    const-string v8, "describe"

    invoke-static {p0, v6, v8}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-static {v5}, Lcom/oneplus/tuner/utillty/Utilities;->splitEffects(Ljava/lang/String;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    .line 408
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iput-object v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 409
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mIsDefault:Z

    .line 410
    iput-object v4, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 411
    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCategoryId:I

    .line 412
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 414
    const/4 v8, 0x1

    iput v8, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 415
    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v1    # "mediaTypeNumber":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "style":Ljava/lang/String;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v7    # "xmlEventType":I
    :catch_0
    move-exception v8

    .line 421
    :cond_2
    return-void
.end method

.method public static postSyncEnforceInitUsedDataRunnable()V
    .locals 2

    .prologue
    .line 745
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/manager/OppoTunerManager$4;

    invoke-direct {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 775
    :goto_0
    return-void

    .line 771
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- postSyncInitUsedDataRunnable mDatabaseHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postSyncInitUsedDataRunnable()V
    .locals 2

    .prologue
    .line 717
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    new-instance v1, Lcom/oneplus/tuner/manager/OppoTunerManager$3;

    invoke-direct {v1}, Lcom/oneplus/tuner/manager/OppoTunerManager$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 741
    :goto_0
    return-void

    .line 737
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- postSyncInitUsedDataRunnable mDatabaseHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postSyncMainRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 686
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- postSyncMainRunnable mMainHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postSyncMainRunnableDelay(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;
    .param p1, "sec"    # J

    .prologue
    .line 697
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 698
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    :goto_0
    return-void

    .line 700
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- postSyncMainRunnableDelay mMainHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postSyncRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 675
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    invoke-virtual {v0, p0}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postCommon(Ljava/lang/Runnable;)V

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- postSyncRunnable mDatabaseHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerSoundEffectDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;

    .prologue
    .line 491
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public static registerSoundEffectUsedDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;)V
    .locals 0
    .param p0, "l"    # Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    .prologue
    .line 780
    sput-object p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    .line 782
    return-void
.end method

.method public static removeMainRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 707
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 708
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    :goto_0
    return-void

    .line 710
    :cond_0
    const-string v0, "OppoTunerManager"

    const-string v1, "OppoTunerManager --- removeMainRunnable mMainHandler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static resetEffectData(Z)V
    .locals 5
    .param p0, "isEq"    # Z

    .prologue
    const/4 v4, 0x0

    .line 575
    const/4 v0, 0x0

    .line 577
    .local v0, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v1, :cond_0

    .line 578
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 583
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    .line 584
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    iput-object v1, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 586
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_1
    iput-object v1, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 588
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_2
    iput-object v1, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 590
    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_3
    iput-object v1, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    .line 592
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mCommend:I

    .line 593
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 594
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v2, -0x1

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 595
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    .line 597
    if-eqz p0, :cond_5

    .line 598
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v1, v1, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    const/16 v3, 0x14

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 611
    :cond_0
    :goto_4
    return-void

    .line 584
    :cond_1
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 586
    :cond_2
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 588
    :cond_3
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 590
    :cond_4
    iget-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mComment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 602
    :cond_5
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    .line 603
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    .line 604
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeBalance:F

    .line 605
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    .line 606
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    .line 607
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    .line 608
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    iput v2, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    goto :goto_4
.end method

.method private static setEffectUsed()V
    .locals 4

    .prologue
    .line 792
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 794
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 796
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v1, :cond_0

    .line 798
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mEditSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 800
    const-string v1, "OppoTunerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectUsed --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v3}, Lcom/oneplus/tuner/providers/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-object v1, v1, Lcom/oneplus/tuner/providers/SoundEffectItem;->mEqBand:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    invoke-virtual {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->updateAllEqGraph()V

    .line 805
    const/4 v1, 0x4

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mBassBoost:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 807
    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTransparentTreble:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 809
    const/16 v1, 0x97

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mClearVocal:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 811
    const/4 v1, 0x3

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mChannelEqualization:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 814
    const/16 v1, 0xe

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mVolumeStrengthen:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 816
    const/16 v1, 0xa

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mSpeakerExpansion:F

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 818
    const/16 v1, 0xd

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParam(IF)V

    .line 824
    :cond_0
    return-void
.end method

.method public static unregisterSoundEffectDataChangeListener(Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;

    .prologue
    .line 496
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method public static unregisterSoundEffectUsedDataChangeListener()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeListener:Lcom/oneplus/tuner/listener/SoundEffectUsedDataChangeListener;

    .line 788
    return-void
.end method

.method public static update(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
    .locals 2
    .param p0, "item"    # Lcom/oneplus/tuner/providers/SoundEffectItem;

    .prologue
    .line 629
    iget v0, p0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 630
    sput-object p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 631
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    :cond_0
    return-void
.end method

.method public static update(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 642
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 644
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 646
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget v3, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 647
    sput-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 648
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 649
    sget-object v3, Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;

    sget-object v4, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    .end local v2    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_0
    return-void

    .line 642
    .restart local v2    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultCommonStyleSoundEffects_001()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14001:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultCommonStyleSoundEffects_049()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->sDefaultCommonStyleSoundEffects_14049:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultSoundEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefaultSoundEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isIsNeedRefreshTokenFlag()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mIsNeedRefreshTokenFlag:Z

    return v0
.end method

.method public reloadDataFromXml()V
    .locals 2

    .prologue
    .line 481
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInited:Z

    .line 482
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDatabaseHandler:Lcom/oneplus/tuner/manager/DatabaseHandler;

    iget-object v1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/manager/DatabaseHandler;->postInit(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public setIsNeedRefreshTokenFlag(Z)V
    .locals 0
    .param p1, "isNeedRefreshTokenFlag"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mIsNeedRefreshTokenFlag:Z

    .line 91
    return-void
.end method
