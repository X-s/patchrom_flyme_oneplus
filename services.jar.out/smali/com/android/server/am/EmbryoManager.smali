.class Lcom/android/server/am/EmbryoManager;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/android/server/am/IEmbryoManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/EmbryoManager$1;,
        Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;,
        Lcom/android/server/am/EmbryoManager$UselessManager;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLE:Z

.field private static ENVIRONMENT:Z = false

.field private static final FLUSH_INTERVAL:J = 0x1b77400L

.field private static final TAG:Ljava/lang/String; = "EmbryoManager"

.field private static sHelper:Lcom/android/server/am/EmbryoHelper;

.field private static sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastFlush:J

.field private mPm:Landroid/os/PowerManager;

.field private mShuttingDown:Z

.field private mThread:Landroid/os/HandlerThread;

.field private final mUterus:Lcom/android/server/am/Uterus;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/EmbryoManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/am/EmbryoManager;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/EmbryoManager;)Lcom/android/server/am/Uterus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    return-object v0
.end method

.method static synthetic -get5()Lcom/android/server/am/EmbryoHelper;
    .locals 1

    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/EmbryoManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    .line 73
    iput-object v2, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 74
    iput-object v2, p0, Lcom/android/server/am/EmbryoManager;->mThread:Landroid/os/HandlerThread;

    .line 75
    iput-object v2, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/server/am/EmbryoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$1;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    invoke-static {}, Lcom/android/server/am/Uterus;->getInstance()Lcom/android/server/am/Uterus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    .line 102
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "create Embryo Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "EmbryoManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/EmbryoManager;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/EmbryoManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/IEmbryoManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IEmbryoManager;
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/android/server/am/EmbryoHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    .line 58
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoHelper;->initEnvironment()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 60
    new-instance v0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>(Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    .line 61
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method private static final isSupportType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V
    .locals 16
    .param p0, "manager"    # Lcom/android/server/am/IEmbryoManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    const-string/jumbo v13, "EmbryoManager"

    const-string/jumbo v14, "[OnlineConfig] embryo jsonArray is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_0
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_c

    .line 351
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 352
    .local v10, "json":Lorg/json/JSONObject;
    const-string/jumbo v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v13, "embryo_blacklist"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 354
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 355
    .local v1, "blackAppListJsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .local v2, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 357
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 360
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 350
    .end local v1    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 362
    :cond_3
    const-string/jumbo v13, "embryo_enable"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 363
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 364
    .local v9, "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 365
    .local v6, "enable":Z
    const-string/jumbo v13, "persist.sys.embryo"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    .local v3, "currStat":Z
    if-eq v6, v3, :cond_2

    .line 367
    const-string/jumbo v14, "persist.sys.embryo"

    if-eqz v6, :cond_4

    const-string/jumbo v13, "1"

    :goto_3
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig]set embryo enable "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v13, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-virtual {v13, v6, v3}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->hotSwitch(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 411
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 412
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig] resolve error message:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 367
    .restart local v3    # "currStat":Z
    .restart local v6    # "enable":Z
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v13, "0"

    goto :goto_3

    .line 373
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_5
    const-string/jumbo v13, "embryo_inflate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 374
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 375
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 376
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.inflate"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 377
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 378
    const-string/jumbo v14, "persist.sys.embryo.inflate"

    if-eqz v6, :cond_6

    const-string/jumbo v13, "1"

    :goto_5
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig]set embryo inflate "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 378
    :cond_6
    const-string/jumbo v13, "0"

    goto :goto_5

    .line 382
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_7
    const-string/jumbo v13, "embryo_support_optheme"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 383
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 384
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 385
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.optheme"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 386
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 387
    const-string/jumbo v14, "persist.sys.embryo.optheme"

    if-eqz v6, :cond_8

    const-string/jumbo v13, "1"

    :goto_6
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig]set embryo optheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 387
    :cond_8
    const-string/jumbo v13, "0"

    goto :goto_6

    .line 391
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v13, "embryo_rename"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 392
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 393
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 394
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.rename"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 395
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 396
    const-string/jumbo v14, "persist.sys.embryo.rename"

    if-eqz v6, :cond_a

    const-string/jumbo v13, "1"

    :goto_7
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig]set embryo rename "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 396
    :cond_a
    const-string/jumbo v13, "0"

    goto :goto_7

    .line 400
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_b
    const-string/jumbo v13, "embryo_limit_count"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 401
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 402
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 403
    .local v11, "limitCount":I
    const-string/jumbo v13, "persist.sys.embryo.optheme"

    const/16 v14, 0x20

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 404
    .local v4, "currVal":I
    if-eq v11, v4, :cond_2

    .line 405
    const-string/jumbo v13, "persist.sys.embryo.limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v13, "EmbryoManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[OnlineConfig]set embryo limit "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 410
    .end local v4    # "currVal":I
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "limitCount":I
    .end local v12    # "name":Ljava/lang/String;
    :cond_c
    const-string/jumbo v13, "EmbryoManager"

    const-string/jumbo v14, "[OnlineConfig] Embryo updated complete"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private setupReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 111
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/Uterus;->resume(Ljava/lang/String;ZI)V

    .line 228
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 3
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    const-string/jumbo v0, "EmbryoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Embryo attached, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->trim()V

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public checkBackgroundLevel(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "lruProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v5, 0x0

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "bgProcCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 311
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 312
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 313
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    .line 315
    const/4 v3, 0x1

    return v3

    .line 310
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    return v5
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->cleanup()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 341
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 337
    return-void
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 298
    const-string/jumbo v1, "Enabled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Build: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/EmbryoApp;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, p1}, Lcom/android/server/am/Uterus;->dumpsys(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoManager"

    const-string/jumbo v2, "error while dumpsys "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public goingToSleep()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->goingToSleep()V

    .line 219
    return-void
.end method

.method public initiate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->initiate()V

    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/am/EmbryoManager;->setupReceiver(Landroid/content/Context;)V

    .line 131
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "initiate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 147
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 148
    :cond_0
    return-object v7

    .line 150
    :cond_1
    invoke-static {p2}, Lcom/android/server/am/EmbryoManager;->isSupportType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 151
    return-object v7

    .line 153
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "sys.embryo.block"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const-string/jumbo v4, "EmbryoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disable embryo by property:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v7

    .line 161
    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 163
    return-object v7

    .line 168
    :cond_4
    const-string/jumbo v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    .line 172
    .local v2, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :goto_0
    if-nez v2, :cond_6

    .line 173
    return-object v7

    .line 170
    .end local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    goto :goto_0

    .line 175
    .restart local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_6
    const/4 v3, 0x0

    .line 176
    .local v3, "thread":Landroid/app/IApplicationThread;
    monitor-enter v2

    .line 177
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    monitor-exit v2

    .line 178
    return-object v7

    .line 180
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v0

    .line 184
    .local v0, "embryo":Lcom/android/server/am/Embryo;
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->match(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 185
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->updateInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 187
    const-string/jumbo v4, "EmbryoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not matched. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 189
    return-object v7

    .line 193
    :cond_8
    :try_start_2
    const-string/jumbo v4, "EmbryoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Embryo claimed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 195
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getThread()Landroid/app/IApplicationThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .local v3, "thread":Landroid/app/IApplicationThread;
    monitor-exit v2

    .line 198
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v4, v2}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 199
    return-object v3

    .line 176
    .end local v0    # "embryo":Lcom/android/server/am/Embryo;
    .local v3, "thread":Landroid/app/IApplicationThread;
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    return-void

    .line 276
    :cond_0
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 278
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_1

    .line 279
    return-void

    .line 285
    :cond_1
    monitor-enter v0

    .line 286
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    .line 291
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setSelfUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 293
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 271
    return-void

    .line 289
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageInstalled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v1, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/am/EmbryoHelper;->checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 262
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 261
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 263
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_2

    .line 264
    return-void

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 252
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 241
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_2

    .line 242
    return-void

    .line 245
    :cond_2
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 236
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 334
    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    .line 333
    return-void
.end method

.method public scheduleAttach(Landroid/app/IApplicationThread;I)V
    .locals 2
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/EmbryoManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/EmbryoManager$2;-><init>(Lcom/android/server/am/EmbryoManager;Landroid/app/IApplicationThread;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->setBlackList(Ljava/util/List;)V

    .line 119
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "update list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 215
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->shutdown()V

    .line 213
    return-void
.end method

.method public updateConfig()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->updateConfig()V

    .line 124
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "update config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public wakingUp()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
