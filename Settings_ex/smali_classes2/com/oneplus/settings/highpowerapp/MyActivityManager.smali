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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    .line 69
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    .line 70
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    .line 71
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    .line 72
    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    .line 27
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 28
    iget-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "getBgMonitorMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgMonitorMode:Ljava/lang/reflect/Method;

    .line 30
    const-string/jumbo v2, "setBgMonitorMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->setBgMonitorMode:Ljava/lang/reflect/Method;

    .line 31
    const-string/jumbo v2, "getBgPowerHungryList"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    .line 32
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

    .line 25
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
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

    .line 35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convert(Ljava/util/List;)Ljava/util/List;
    .locals 14
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
    .line 75
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 79
    .local v11, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v12, "pkgName"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v12, "powerLevel"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v12, "isLocked"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v12, "isStopped"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    .line 88
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v12, "timeStamp"

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    .line 90
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "pn":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    .local v3, "level":I
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 100
    .local v4, "lock":Z
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 101
    .local v5, "stop":Z
    iget-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 102
    .local v6, "time":J
    new-instance v1, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IZZJ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "convert pn: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", lock="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", stop="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 104
    .end local v2    # "pn":Ljava/lang/String;
    .end local v3    # "level":I
    .end local v4    # "lock":Z
    .end local v5    # "stop":Z
    .end local v6    # "time":J
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 92
    .local v8, "e1":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 109
    .end local v8    # "e1":Ljava/lang/Exception;
    .end local v11    # "o":Ljava/lang/Object;
    :cond_1
    return-object v10
.end method

.method public static get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 48
    :cond_1
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBgMonitorMode()Z
    .locals 2

    .prologue
    .line 52
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
    .line 61
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

    .line 113
    iget-object v3, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 114
    :cond_0
    return-object v4

    .line 118
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

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 127
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v4

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBgMonitorMode(Z)V
    .locals 4
    .param p1, "auto"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->setBgMonitorMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 65
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

    .line 64
    return-void
.end method
