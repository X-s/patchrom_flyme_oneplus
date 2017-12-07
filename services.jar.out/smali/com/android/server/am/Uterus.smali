.class Lcom/android/server/am/Uterus;
.super Ljava/lang/Object;
.source "Uterus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Uterus$1;,
        Lcom/android/server/am/Uterus$2;,
        Lcom/android/server/am/Uterus$3;,
        Lcom/android/server/am/Uterus$BirthRunnable;,
        Lcom/android/server/am/Uterus$EmbryoMemory;,
        Lcom/android/server/am/Uterus$InitiateRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static MAX:I = 0x0

.field private static final PATH:Ljava/lang/String; = "/data/system/embryo"

.field private static final SCALE:J

.field private static final TAG:Ljava/lang/String; = "Embryo_Uterus"

.field private static final mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/Uterus;


# instance fields
.field private final mAllSupervisorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigUpdateRunnable:Ljava/lang/Runnable;

.field private mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

.field private final mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/android/server/am/EmbryoHelper;

.field private mHomePackageName:Ljava/lang/String;

.field private mLRUHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mStub:Landroid/app/IEmbryoController$Stub;

.field private final mSupervisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/EmbryoSupervisor;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrimRunnable:Ljava/lang/Runnable;

.field private final mWaitingForAttach:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForPreload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/Embryo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/am/Uterus;->MAX:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/Uterus;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/Uterus;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/am/Uterus;->MAX:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/Uterus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const-string/jumbo v0, "persist.sys.embryo.limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Uterus;->MAX:I

    .line 47
    const-string/jumbo v0, "persist.sys.embryo.scale"

    .line 48
    const-wide/32 v2, 0x36ee80

    .line 47
    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/Uterus;->SCALE:J

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/android/server/am/Uterus;->MAX:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/android/server/am/EmbryoHelper;->getInstance()Lcom/android/server/am/EmbryoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    .line 416
    new-instance v0, Lcom/android/server/am/Uterus$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$1;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    .line 530
    new-instance v0, Lcom/android/server/am/Uterus$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$2;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    .line 594
    new-instance v0, Lcom/android/server/am/Uterus$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/Uterus$3;-><init>(Lcom/android/server/am/Uterus;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mStub:Landroid/app/IEmbryoController$Stub;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "EmbryoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private declared-synchronized flushToStorage()V
    .locals 18

    .prologue
    monitor-enter p0

    .line 248
    :try_start_0
    const-string/jumbo v13, "Embryo_Uterus"

    const-string/jumbo v14, "Flush to storage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 252
    return-void

    .line 253
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v14

    .line 255
    new-instance v13, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;

    invoke-direct {v13}, Lcom/android/server/am/EmbryoSupervisor$HighToLowComparator;-><init>()V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v7, "json":Lorg/json/JSONObject;
    const/4 v3, 0x1

    .line 260
    .local v3, "first":Z
    sget-wide v8, Lcom/android/server/am/Uterus;->SCALE:J

    .line 261
    .local v8, "normalized":J
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 262
    .local v4, "factor":D
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "p$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/EmbryoSupervisor;

    .line 263
    .local v10, "p":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 269
    if-eqz v3, :cond_3

    .line 270
    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v14

    cmp-long v13, v14, v8

    if-lez v13, :cond_2

    .line 271
    long-to-double v14, v8

    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v4, v14, v16

    .line 272
    :cond_2
    const/4 v3, 0x0

    .line 275
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v6, "item":Lorg/json/JSONObject;
    const-string/jumbo v13, "fg"

    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v14, v4

    double-to-long v14, v14

    invoke-virtual {v6, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->dump()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 283
    .end local v3    # "first":Z
    .end local v4    # "factor":D
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "normalized":J
    .end local v10    # "p":Lcom/android/server/am/EmbryoSupervisor;
    .end local v11    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v13, "Embryo_Uterus"

    const-string/jumbo v14, "Embryo flush failed"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    .line 247
    return-void

    .line 250
    :catchall_0
    move-exception v13

    :try_start_7
    monitor-exit v14

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    :catchall_1
    move-exception v13

    monitor-exit p0

    throw v13

    .line 282
    .restart local v3    # "first":Z
    .restart local v4    # "factor":D
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "normalized":J
    .restart local v11    # "p$iterator":Ljava/util/Iterator;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    :cond_4
    :try_start_8
    const-string/jumbo v13, "/data/system/embryo"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/am/Uterus;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/am/Uterus;

    invoke-direct {v0}, Lcom/android/server/am/Uterus;-><init>()V

    sput-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    return-object v0
.end method


# virtual methods
.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 10
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "newbie":Lcom/android/server/am/Embryo;
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v7

    .line 152
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newbie":Lcom/android/server/am/Embryo;
    check-cast v3, Lcom/android/server/am/Embryo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "newbie":Lcom/android/server/am/Embryo;
    monitor-exit v7

    .line 154
    if-nez v3, :cond_0

    .line 155
    return v9

    .line 151
    .end local v3    # "newbie":Lcom/android/server/am/Embryo;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 157
    .restart local v3    # "newbie":Lcom/android/server/am/Embryo;
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v5

    .line 158
    .local v5, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v5, :cond_1

    .line 159
    return v9

    .line 162
    :cond_1
    monitor-enter v5

    .line 163
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/am/EmbryoSupervisor;->needAbortion()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    invoke-static {p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 167
    const-string/jumbo v6, "Embryo_Uterus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Embryo abortion, pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v5

    .line 175
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p2, v6}, Landroid/os/Process;->setProcessGroup(II)V

    .line 176
    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 177
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v6, v0}, Lcom/android/server/am/EmbryoHelper;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 178
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3, p1}, Lcom/android/server/am/Embryo;->setThread(Landroid/app/IApplicationThread;)V

    .line 179
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v7

    .line 183
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/EmbryoHelper;->getCommonServicesLocked(Z)Ljava/util/HashMap;

    move-result-object v4

    .line 184
    .local v4, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz v4, :cond_3

    .line 185
    const-string/jumbo v6, "embryo"

    iget-object v7, p0, Lcom/android/server/am/Uterus;->mStub:Landroid/app/IEmbryoController$Stub;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v6}, Lcom/android/server/am/EmbryoHelper;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-interface {p1, v0, v1, v6, v4}, Landroid/app/IApplicationThread;->schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    const/4 v6, 0x1

    return v6

    .line 162
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v4    # "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v6

    monitor-exit v5

    throw v6

    .line 179
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 188
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Lcom/android/server/am/Embryo;->destroy()V

    .line 190
    monitor-enter v5

    .line 191
    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v5, v6}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v5

    .line 193
    return v9

    .line 190
    :catchall_3
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public cleanup()V
    .locals 4

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 305
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "es$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/EmbryoSupervisor;

    .line 307
    .local v0, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    .end local v0    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v1    # "es$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 309
    .restart local v1    # "es$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 311
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v3

    .line 312
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 314
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v3

    .line 315
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v3

    .line 317
    iget-object v3, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v3

    .line 318
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v3

    .line 320
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/Uterus;->sInstance:Lcom/android/server/am/Uterus;

    .line 303
    return-void

    .line 311
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 314
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 317
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dumpsys(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "max_count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/am/Uterus;->MAX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    monitor-enter v7

    .line 381
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waiting_for_attach:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 383
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForAttach:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/Embryo;

    .line 385
    .local v0, "embryo":Lcom/android/server/am/Embryo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waiting pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 380
    .end local v0    # "embryo":Lcom/android/server/am/Embryo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    monitor-exit v7

    .line 390
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    monitor-enter v7

    .line 391
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waiting_for_preload:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 393
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mWaitingForPreload:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 394
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/Embryo;

    .line 395
    .restart local v0    # "embryo":Lcom/android/server/am/Embryo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waiting pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 390
    .end local v0    # "embryo":Lcom/android/server/am/Embryo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/Embryo;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    monitor-exit v7

    .line 400
    new-instance v5, Lcom/android/server/am/Uterus$EmbryoMemory;

    invoke-direct {v5}, Lcom/android/server/am/Uterus$EmbryoMemory;-><init>()V

    .line 401
    .local v5, "total":Lcom/android/server/am/Uterus$EmbryoMemory;
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v7

    .line 402
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "supervisors:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "es$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/EmbryoSupervisor;

    .line 404
    .local v3, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v3, p1, v5}, Lcom/android/server/am/EmbryoSupervisor;->dump(Ljava/io/PrintWriter;Lcom/android/server/am/Uterus$EmbryoMemory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 401
    .end local v3    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v4    # "es$iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v4    # "es$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v7

    .line 408
    iget v6, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    if-nez v6, :cond_3

    .line 409
    return-void

    .line 411
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total Memory Usage: PSS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB, USS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Avg. Memory Usage: PSS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->pss:J

    iget v7, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v10, v7

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "KB, USS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    iget-wide v8, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->uss:J

    iget v7, v5, Lcom/android/server/am/Uterus$EmbryoMemory;->count:I

    int-to-long v10, v7

    div-long/2addr v8, v10

    .line 412
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    const-string/jumbo v7, "KB"

    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public findSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/EmbryoSupervisor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finish(Lcom/android/server/am/EmbryoSupervisor;)V
    .locals 2
    .param p1, "supervisor"    # Lcom/android/server/am/EmbryoSupervisor;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mSupervisors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 221
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOrCreateSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 134
    sget-object v2, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v1, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 136
    return-object v3

    :cond_0
    monitor-exit v2

    .line 139
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v2

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/EmbryoSupervisor;

    .line 141
    .local v0, "p":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/android/server/am/EmbryoSupervisor;

    .end local v0    # "p":Lcom/android/server/am/EmbryoSupervisor;
    invoke-direct {v0, p1}, Lcom/android/server/am/EmbryoSupervisor;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v0    # "p":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v2

    .line 145
    return-object v0

    .line 134
    .end local v0    # "p":Lcom/android/server/am/EmbryoSupervisor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public goingToSleep()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->stop()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 356
    :cond_0
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initiate()V
    .locals 6

    .prologue
    .line 238
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/embryo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Uterus$InitiateRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/Uterus$InitiateRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$InitiateRunnable;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void
.end method

.method public prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V
    .locals 6
    .param p1, "supervisor"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p2, "sec"    # I
    .param p3, "checkProcess"    # Z

    .prologue
    const/4 v3, 0x0

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    monitor-enter p1

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p1

    .line 207
    return-void

    .line 205
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v2

    .line 203
    if-nez v2, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v2

    .line 203
    if-nez v2, :cond_0

    .line 208
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/EmbryoSupervisor;->setWaitingForFork(Z)V

    .line 209
    invoke-virtual {p1}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    monitor-exit p1

    .line 213
    new-instance v0, Lcom/android/server/am/Uterus$BirthRunnable;

    invoke-direct {v0, p0, p1, v1, v3}, Lcom/android/server/am/Uterus$BirthRunnable;-><init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/EmbryoSupervisor;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/Uterus$BirthRunnable;)V

    .line 214
    .local v0, "br":Lcom/android/server/am/Uterus$BirthRunnable;
    invoke-virtual {v0, p3}, Lcom/android/server/am/Uterus$BirthRunnable;->setCheckProcess(Z)V

    .line 215
    if-lez p2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :goto_0
    return-void

    .line 202
    .end local v0    # "br":Lcom/android/server/am/Uterus$BirthRunnable;
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v2

    monitor-exit p1

    throw v2

    .line 218
    .restart local v0    # "br":Lcom/android/server/am/Uterus$BirthRunnable;
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resume(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHome"    # Z

    .prologue
    const/4 v3, 0x0

    .line 324
    if-eqz p2, :cond_0

    .line 325
    iput-object p1, p0, Lcom/android/server/am/Uterus;->mHomePackageName:Ljava/lang/String;

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 328
    .local v0, "next":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-ne v0, v1, :cond_1

    .line 329
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    if-eqz v1, :cond_2

    .line 333
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    monitor-enter v2

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 338
    :cond_2
    if-nez v0, :cond_3

    .line 340
    iput-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 341
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 344
    :cond_3
    monitor-enter v0

    .line 345
    :try_start_1
    iput-object v0, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    .line 346
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    .line 350
    iget-object v2, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    monitor-enter v2

    .line 351
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, p0, Lcom/android/server/am/Uterus;->mLRUHistory:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/Uterus;->mCurrentSupervisor:Lcom/android/server/am/EmbryoSupervisor;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    .line 323
    return-void

    .line 344
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 350
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public scheduleBackup()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Uterus$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/Uterus$4;-><init>(Lcom/android/server/am/Uterus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 8
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 93
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v5, "tmp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 95
    :try_start_0
    sget-object v6, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    .local v3, "pkg":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 98
    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 99
    sget-object v6, Lcom/android/server/am/Uterus;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 102
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "dieList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    iget-object v7, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    monitor-enter v7

    .line 108
    :try_start_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/Uterus;->mAllSupervisorMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/EmbryoSupervisor;

    .line 110
    .local v1, "es":Lcom/android/server/am/EmbryoSupervisor;
    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 107
    .end local v1    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v3    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    monitor-exit v7

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 115
    return-void

    .line 118
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "es$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/EmbryoSupervisor;

    .line 119
    .restart local v1    # "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V

    goto :goto_2

    .line 91
    .end local v1    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :cond_6
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/server/am/Uterus;->flushToStorage()V

    .line 299
    return-void
.end method

.method public trim()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mTrimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method public updateConfig()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/am/Uterus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Uterus;->mConfigUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method
