.class public Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
.super Ljava/lang/Object;
.source "BgOActivityManager.java"

# interfaces
.implements Lcom/oneplus/settings/backgroundoptimize/IBgOActivityManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;


# instance fields
.field private getAllAppControlModes:Ljava/lang/reflect/Method;

.field private getAppControlMode:Ljava/lang/reflect/Method;

.field private getAppControlState:Ljava/lang/reflect/Method;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private setAppControlMode:Ljava/lang/reflect/Method;

.field private setAppControlState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    const-string/jumbo v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 29
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "getAllAppControlModes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes:Ljava/lang/reflect/Method;

    .line 31
    const-string/jumbo v2, "getAppControlMode"

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

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode:Ljava/lang/reflect/Method;

    .line 32
    const-string/jumbo v2, "setAppControlMode"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode:Ljava/lang/reflect/Method;

    .line 33
    const-string/jumbo v2, "getAppControlState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState:Ljava/lang/reflect/Method;

    .line 34
    const-string/jumbo v2, "setAppControlState"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BgOActivityManager Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convert(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v10, 0x0

    .line 56
    .local v10, "packageName":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 57
    .local v7, "mode":Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .line 58
    .local v12, "value":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v7    # "mode":Ljava/lang/reflect/Field;
    .end local v10    # "packageName":Ljava/lang/reflect/Field;
    .end local v12    # "value":Ljava/lang/reflect/Field;
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 62
    .local v9, "o":Ljava/lang/Object;
    if-nez v10, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "packageName"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 65
    .local v10, "packageName":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "mode"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 67
    .local v7, "mode":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 69
    .local v12, "value":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .end local v7    # "mode":Ljava/lang/reflect/Field;
    .end local v10    # "packageName":Ljava/lang/reflect/Field;
    .end local v12    # "value":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 77
    .local v11, "pn":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 78
    .local v6, "m":I
    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 79
    .local v8, "n":I
    sget-object v13, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AppControl # convert: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", value="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v13, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    invoke-direct {v13, v11, v6, v8}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 81
    .end local v6    # "m":I
    .end local v8    # "n":I
    .end local v11    # "pn":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 70
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 71
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v3    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v9    # "o":Ljava/lang/Object;
    :cond_1
    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 51
    :cond_1
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->instance:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 107
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    check-cast v1, Ljava/util/List;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->convert(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 115
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :cond_1
    return-object v2

    .line 110
    .restart local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllAppControlModesMap(I)Ljava/util/Map;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/backgroundoptimize/AppControlMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/backgroundoptimize/AppControlMode;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 97
    .local v0, "app":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    iget-object v4, v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    .end local v0    # "app":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    :cond_0
    return-object v3
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 124
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 126
    .local v1, "ret":I
    if-eqz v0, :cond_0

    .line 127
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    :cond_0
    sget-object v2, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppControl # getAppControlMode packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v1
.end method

.method public getAppControlState(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 143
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 145
    .local v1, "ret":I
    if-eqz v0, :cond_0

    .line 146
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 149
    :cond_0
    sget-object v2, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppControl # getAppControlState mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return v1
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 162
    :cond_0
    return-object v4

    .line 166
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 175
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v4

    .line 169
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppControl # setAppControlMode packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return v4
.end method

.method public setAppControlState(II)I
    .locals 5
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 155
    sget-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppControl # setAppControlState mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return v4
.end method
