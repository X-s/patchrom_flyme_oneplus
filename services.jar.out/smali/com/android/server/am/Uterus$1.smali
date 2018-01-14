.class Lcom/android/server/am/Uterus$1;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, "byRank":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/EmbryoSupervisor;>;"
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    .line 435
    :try_start_0
    const-string/jumbo v10, "Embryo_Uterus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "trim size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v13}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 440
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 441
    .local v2, "es":Lcom/android/server/am/EmbryoSupervisor;
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->hasEmbryo()Z

    move-result v10

    if-nez v10, :cond_0

    .line 443
    const-string/jumbo v10, "Embryo_Uterus"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "detect supervisors wo embryo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 439
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 448
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    :cond_1
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, Lcom/android/server/am/Uterus;->-get0()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-gt v10, v12, :cond_2

    monitor-exit v11

    .line 449
    return-void

    .line 451
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 454
    const-string/jumbo v10, "Embryo_Uterus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ">>> trim start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v10, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;

    invoke-direct {v10}, Lcom/android/server/am/EmbryoSupervisor$LowToHighComparator;-><init>()V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 462
    const/4 v7, 0x1

    .line 463
    .local v7, "rank":I
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get2(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    .line 464
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .local v3, "es$iterator":Ljava/util/Iterator;
    move v8, v7

    .end local v7    # "rank":I
    .local v8, "rank":I
    :goto_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 465
    .restart local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get2(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v6

    .line 467
    .local v6, "lru":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "rank":I
    .restart local v7    # "rank":I
    add-int v10, v6, v8

    :try_start_4
    invoke-virtual {v2, v10}, Lcom/android/server/am/EmbryoSupervisor;->setRank(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v8, v7

    .end local v7    # "rank":I
    .restart local v8    # "rank":I
    goto :goto_1

    .line 433
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v3    # "es$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .end local v6    # "lru":I
    .end local v8    # "rank":I
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .restart local v3    # "es$iterator":Ljava/util/Iterator;
    .restart local v4    # "i":I
    .restart local v8    # "rank":I
    :cond_3
    monitor-exit v11

    .line 470
    new-instance v10, Lcom/android/server/am/EmbryoSupervisor$RankComparator;

    invoke-direct {v10}, Lcom/android/server/am/EmbryoSupervisor$RankComparator;-><init>()V

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 472
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/EmbryoSupervisor;

    .line 473
    .restart local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    const-string/jumbo v10, "Embryo_Uterus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rank:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->getRank()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 474
    invoke-virtual {v2}, Lcom/android/server/am/EmbryoSupervisor;->getForegroundTime()J

    move-result-wide v12

    .line 473
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 463
    .end local v2    # "es":Lcom/android/server/am/EmbryoSupervisor;
    .end local v3    # "es$iterator":Ljava/util/Iterator;
    .end local v8    # "rank":I
    .restart local v7    # "rank":I
    :catchall_1
    move-exception v10

    :goto_3
    monitor-exit v11

    throw v10

    .line 478
    .end local v7    # "rank":I
    .restart local v3    # "es$iterator":Ljava/util/Iterator;
    .restart local v8    # "rank":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, Lcom/android/server/am/Uterus;->-get0()I

    move-result v11

    sub-int v5, v10, v11

    .line 479
    .local v5, "kill":I
    add-int/lit8 v4, v5, -0x1

    :goto_4
    if-ltz v4, :cond_6

    .line 480
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/EmbryoSupervisor;

    .line 482
    .local v9, "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11

    .line 483
    :try_start_5
    iget-object v10, p0, Lcom/android/server/am/Uterus$1;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v10}, Lcom/android/server/am/Uterus;->-get3(Lcom/android/server/am/Uterus;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v11

    .line 486
    monitor-enter v9

    .line 488
    :try_start_6
    const-string/jumbo v10, "Embryo_Uterus"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "trim "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/am/EmbryoSupervisor;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v9}, Lcom/android/server/am/EmbryoSupervisor;->detach()Lcom/android/server/am/Embryo;

    move-result-object v1

    .line 490
    .local v1, "embryo":Lcom/android/server/am/Embryo;
    if-eqz v1, :cond_5

    .line 491
    invoke-virtual {v1}, Lcom/android/server/am/Embryo;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5
    monitor-exit v9

    .line 479
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 482
    .end local v1    # "embryo":Lcom/android/server/am/Embryo;
    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10

    .line 486
    :catchall_3
    move-exception v10

    monitor-exit v9

    throw v10

    .line 495
    .end local v9    # "supervisor":Lcom/android/server/am/EmbryoSupervisor;
    :cond_6
    const-string/jumbo v10, "Embryo_Uterus"

    const-string/jumbo v11, "<<< trim finished"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 463
    .end local v5    # "kill":I
    :catchall_4
    move-exception v10

    move v7, v8

    .end local v8    # "rank":I
    .restart local v7    # "rank":I
    goto :goto_3
.end method
