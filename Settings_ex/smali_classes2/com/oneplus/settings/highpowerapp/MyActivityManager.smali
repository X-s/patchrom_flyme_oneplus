.class public Lcom/oneplus/settings/highpowerapp/MyActivityManager;
.super Ljava/lang/Object;
.source "MyActivityManager.java"

# interfaces
.implements Lcom/oneplus/settings/highpowerapp/IMyActivityManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;


# instance fields
.field private getBgMonitorMode:Ljava/lang/reflect/Method;

.field private getBgPowerHungryList:Ljava/lang/reflect/Method;

.field isLocked:Ljava/lang/reflect/Field;

.field isStopped:Ljava/lang/reflect/Field;

.field private mActivityManager:Landroid/app/ActivityManager;

.field packageName:Ljava/lang/reflect/Field;

.field powerLevel:Ljava/lang/reflect/Field;

.field private setBgMonitorMode:Ljava/lang/reflect/Method;

.field private stopBgPowerHungryApp:Ljava/lang/reflect/Method;

.field timeStamp:Ljava/lang/reflect/Field;

.field uId:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    .line 70
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    .line 71
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    .line 72
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    .line 73
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    .line 74
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    .line 28
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 29
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "getBgMonitorMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgMonitorMode:Ljava/lang/reflect/Method;

    .line 31
    const-string/jumbo v2, "setBgMonitorMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->setBgMonitorMode:Ljava/lang/reflect/Method;

    .line 32
    const-string/jumbo v2, "getBgPowerHungryList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    .line 33
    const-string/jumbo v2, "stopBgPowerHungryApp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MyActivityManager Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convert(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 81
    .local v21, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 83
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "powerLevel"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "isLocked"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "isStopped"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "timeStamp"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v11, 0x1b

    const/4 v12, 0x0

    aput v11, v2, v12

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v11, "uid"

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :cond_0
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "pn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 105
    .local v5, "level":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 106
    .local v6, "lock":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 107
    .local v7, "stop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 108
    .local v8, "time":J
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v11, 0x1b

    const/4 v12, 0x0

    aput v11, v2, v12

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 110
    .local v4, "uid":I
    new-instance v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v2, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "convert pn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", uid ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", level="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", lock="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", stop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 116
    .end local v3    # "pn":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "level":I
    .end local v6    # "lock":Z
    .end local v7    # "stop":Z
    .end local v8    # "time":J
    :catch_0
    move-exception v10

    .line 117
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 97
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v18

    .line 98
    .local v18, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 113
    .end local v18    # "e1":Ljava/lang/Exception;
    .restart local v3    # "pn":Ljava/lang/String;
    .restart local v5    # "level":I
    .restart local v6    # "lock":Z
    .restart local v7    # "stop":Z
    .restart local v8    # "time":J
    :cond_1
    :try_start_2
    new-instance v11, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-object v12, v3

    move v13, v5

    move v14, v6

    move v15, v7

    move-wide/from16 v16, v8

    invoke-direct/range {v11 .. v17}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IZZJ)V

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v2, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "convert pn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", level="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", lock="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", stop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 121
    .end local v3    # "pn":Ljava/lang/String;
    .end local v5    # "level":I
    .end local v6    # "lock":Z
    .end local v7    # "stop":Z
    .end local v8    # "time":J
    .end local v21    # "o":Ljava/lang/Object;
    :cond_2
    return-object v20
.end method

.method public static get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 49
    :cond_1
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBgMonitorMode()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgMonitorMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    return-object v4

    .line 130
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 139
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v4

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBgMonitorMode(Z)V
    .locals 4
    .param p1, "auto"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->setBgMonitorMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
