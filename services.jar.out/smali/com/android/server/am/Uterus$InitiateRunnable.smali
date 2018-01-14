.class final Lcom/android/server/am/Uterus$InitiateRunnable;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitiateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method private constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$InitiateRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/Uterus$InitiateRunnable;-><init>(Lcom/android/server/am/Uterus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 505
    .local v11, "userId":I
    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string/jumbo v13, "/data/system/embryo"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "content":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    .local v8, "json":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 508
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 510
    .local v3, "i":I
    const/4 v0, 0x5

    .line 511
    .local v0, "base":I
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 512
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 515
    .local v9, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v12}, Lcom/android/server/am/Uterus;->-get1(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/EmbryoHelper;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 518
    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v10

    .line 519
    .local v10, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    if-eqz v10, :cond_0

    .line 522
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 523
    .local v6, "item":Lorg/json/JSONObject;
    const-string/jumbo v12, "fg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 524
    .local v4, "fgTime":J
    invoke-virtual {v10, v4, v5}, Lcom/android/server/am/EmbryoSupervisor;->restoreForegroundTime(J)V

    .line 528
    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v12}, Lcom/android/server/am/Uterus;->-get1(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/EmbryoHelper;->checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 529
    invoke-virtual {v10}, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 532
    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/android/server/am/Uterus;->-get0()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 533
    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x1

    invoke-virtual {v12, v10, v0, v13}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v0    # "base":I
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "fgTime":J
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "Embryo_Uterus"

    const-string/jumbo v13, "Embryo initiate failed"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
