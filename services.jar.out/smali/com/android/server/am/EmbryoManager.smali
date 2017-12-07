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

.field private mLastFlush:J

.field private mPm:Landroid/os/PowerManager;

.field private mShuttingDown:Z

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

.method static synthetic -set0(Lcom/android/server/am/EmbryoManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENABLE:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/EmbryoManager;->mLastFlush:J

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/am/EmbryoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoManager$1;-><init>(Lcom/android/server/am/EmbryoManager;)V

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    invoke-static {}, Lcom/android/server/am/Uterus;->getInstance()Lcom/android/server/am/Uterus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    .line 97
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "create Embryo Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
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
    .line 62
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IEmbryoManager;
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/server/am/EmbryoHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/EmbryoHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    .line 55
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v0}, Lcom/android/server/am/EmbryoHelper;->initEnvironment()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/EmbryoManager;->ENVIRONMENT:Z

    .line 57
    new-instance v0, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-direct {v0, v1}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;-><init>(Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;)V

    sput-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    .line 58
    sget-object v0, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    return-object v0
.end method

.method private static final isSupportType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "hostingType"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string/jumbo v0, "activity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V
    .locals 16
    .param p0, "manager"    # Lcom/android/server/am/IEmbryoManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    const-string/jumbo v13, "EmbryoManager"

    const-string/jumbo v14, "[OnlineConfig] embryo jsonArray is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_0
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_c

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 328
    .local v10, "json":Lorg/json/JSONObject;
    const-string/jumbo v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v13, "embryo_blacklist"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 330
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 331
    .local v1, "blackAppListJsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    .local v2, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 333
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 336
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 326
    .end local v1    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 338
    :cond_3
    const-string/jumbo v13, "embryo_enable"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 339
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 340
    .local v9, "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 341
    .local v6, "enable":Z
    const-string/jumbo v13, "persist.sys.embryo"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 342
    .local v3, "currStat":Z
    if-eq v6, v3, :cond_2

    .line 343
    const-string/jumbo v14, "persist.sys.embryo"

    if-eqz v6, :cond_4

    const-string/jumbo v13, "1"

    :goto_3
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
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

    .line 346
    sget-object v13, Lcom/android/server/am/EmbryoManager;->sWrapperInstance:Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;

    invoke-virtual {v13, v6, v3}, Lcom/android/server/am/EmbryoManager$EmbryoManagerWrapper;->hotSwitch(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 387
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 388
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

    .line 320
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 343
    .restart local v3    # "currStat":Z
    .restart local v6    # "enable":Z
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v13, "0"

    goto :goto_3

    .line 349
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_5
    const-string/jumbo v13, "embryo_inflate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 350
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 351
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 352
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.inflate"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 353
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 354
    const-string/jumbo v14, "persist.sys.embryo.inflate"

    if-eqz v6, :cond_6

    const-string/jumbo v13, "1"

    :goto_5
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
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

    .line 354
    :cond_6
    const-string/jumbo v13, "0"

    goto :goto_5

    .line 358
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_7
    const-string/jumbo v13, "embryo_support_optheme"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 359
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 360
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 361
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.optheme"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 362
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 363
    const-string/jumbo v14, "persist.sys.embryo.optheme"

    if-eqz v6, :cond_8

    const-string/jumbo v13, "1"

    :goto_6
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
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

    .line 363
    :cond_8
    const-string/jumbo v13, "0"

    goto :goto_6

    .line 367
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v13, "embryo_rename"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 368
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 369
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 370
    .restart local v6    # "enable":Z
    const-string/jumbo v13, "persist.sys.embryo.rename"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 371
    .restart local v3    # "currStat":Z
    if-eq v6, v3, :cond_2

    .line 372
    const-string/jumbo v14, "persist.sys.embryo.rename"

    if-eqz v6, :cond_a

    const-string/jumbo v13, "1"

    :goto_7
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
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

    .line 372
    :cond_a
    const-string/jumbo v13, "0"

    goto :goto_7

    .line 376
    .end local v3    # "currStat":Z
    .end local v6    # "enable":Z
    .end local v9    # "jasonArray":Lorg/json/JSONArray;
    :cond_b
    const-string/jumbo v13, "embryo_limit_count"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 377
    const-string/jumbo v13, "value"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 378
    .restart local v9    # "jasonArray":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 379
    .local v11, "limitCount":I
    const-string/jumbo v13, "persist.sys.embryo.optheme"

    const/16 v14, 0x20

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 380
    .local v4, "currVal":I
    if-eq v11, v4, :cond_2

    .line 381
    const-string/jumbo v13, "persist.sys.embryo.limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
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

    .line 386
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
    .line 101
    iput-object p1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/am/EmbryoManager;->mPm:Landroid/os/PowerManager;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method


# virtual methods
.method public activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/Uterus;->resume(Ljava/lang/String;Z)V

    .line 218
    return-void
.end method

.method public attach(Landroid/app/IApplicationThread;I)Z
    .locals 3
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "pid"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/Uterus;->attach(Landroid/app/IApplicationThread;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 197
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

    .line 198
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->trim()V

    .line 199
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

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "bgProcCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 300
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 301
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 302
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 303
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    .line 304
    const/4 v3, 0x1

    return v3

    .line 299
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 307
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    return v5
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mDeviceIdleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->cleanup()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/EmbryoManager;->mContext:Landroid/content/Context;

    .line 314
    return-void
.end method

.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 287
    const-string/jumbo v1, "Enabled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
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

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, p1}, Lcom/android/server/am/Uterus;->dumpsys(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoManager"

    const-string/jumbo v2, "error while dumpsys "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public goingToSleep()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->goingToSleep()V

    .line 209
    return-void
.end method

.method public initiate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->initiate()V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/am/EmbryoManager;->setupReceiver(Landroid/content/Context;)V

    .line 122
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "initiate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 137
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 138
    :cond_0
    return-object v7

    .line 140
    :cond_1
    invoke-static {p2}, Lcom/android/server/am/EmbryoManager;->isSupportType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    return-object v7

    .line 143
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 146
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "sys.embryo.block"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
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

    .line 148
    return-object v7

    .line 151
    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 153
    return-object v7

    .line 158
    :cond_4
    const-string/jumbo v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    .line 162
    .local v2, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :goto_0
    if-nez v2, :cond_6

    .line 163
    return-object v7

    .line 160
    .end local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v2

    goto :goto_0

    .line 165
    .restart local v2    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_6
    const/4 v3, 0x0

    .line 166
    .local v3, "thread":Landroid/app/IApplicationThread;
    monitor-enter v2

    .line 167
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    monitor-exit v2

    .line 168
    return-object v7

    .line 170
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v0

    .line 174
    .local v0, "embryo":Lcom/android/server/am/Embryo;
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->match(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 175
    invoke-virtual {v2, v1}, Lcom/android/server/am/EmbryoSupervisor;->updateInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 177
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

    .line 178
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 179
    return-object v7

    .line 183
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

    .line 184
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getPid()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 185
    invoke-virtual {v0}, Lcom/android/server/am/Embryo;->getThread()Landroid/app/IApplicationThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .local v3, "thread":Landroid/app/IApplicationThread;
    monitor-exit v2

    .line 188
    iget-object v4, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v4, v2}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 189
    return-object v3

    .line 166
    .end local v0    # "embryo":Lcom/android/server/am/Embryo;
    .local v3, "thread":Landroid/app/IApplicationThread;
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public packageChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    return-void

    .line 265
    :cond_0
    const-string/jumbo v1, "EmbryoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, p1}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 267
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_1

    .line 268
    return-void

    .line 274
    :cond_1
    monitor-enter v0

    .line 275
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->isWaitingForFork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setAbortion()V

    .line 280
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->setSelfUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 282
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Uterus;->finish(Lcom/android/server/am/EmbryoSupervisor;)V

    .line 260
    return-void

    .line 278
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/EmbryoSupervisor;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public packageInstalled(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    return-void

    .line 246
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v1, Lcom/android/server/am/EmbryoManager;->sHelper:Lcom/android/server/am/EmbryoHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/am/EmbryoHelper;->checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 252
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_2

    .line 253
    return-void

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 242
    return-void
.end method

.method public prepare(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 228
    :cond_0
    return-void

    .line 227
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Uterus;->findSupervisor(Ljava/lang/String;)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v0

    .line 231
    .local v0, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-nez v0, :cond_2

    .line 232
    return-void

    .line 235
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V

    .line 226
    return-void
.end method

.method public resolveConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 311
    invoke-static {p0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfigCommon(Lcom/android/server/am/IEmbryoManager;Lorg/json/JSONArray;)V

    .line 310
    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Uterus;->setBlackList(Ljava/util/List;)V

    .line 110
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "update list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/EmbryoManager;->mShuttingDown:Z

    .line 205
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->shutdown()V

    .line 203
    return-void
.end method

.method public updateConfig()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/am/EmbryoManager;->mUterus:Lcom/android/server/am/Uterus;

    invoke-virtual {v0}, Lcom/android/server/am/Uterus;->updateConfig()V

    .line 115
    const-string/jumbo v0, "EmbryoManager"

    const-string/jumbo v1, "update config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public wakingUp()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
