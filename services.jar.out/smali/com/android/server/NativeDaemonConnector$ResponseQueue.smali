.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 575
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 576
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .locals 8
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/android/server/NativeDaemonEvent;

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v5

    .line 581
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 582
    .local v3, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v4, p1, :cond_0

    .line 583
    move-object v0, v3

    move-object v1, v0

    .line 587
    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v1, :cond_3

    .line 589
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v4, v6, :cond_1

    .line 590
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 595
    .restart local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 606
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 599
    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 602
    :goto_3
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 605
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 606
    :cond_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 608
    :try_start_5
    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 610
    :goto_4
    return-void

    .line 609
    :catch_0
    move-exception v4

    goto :goto_4

    .line 606
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    goto :goto_2

    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object v0, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    :cond_4
    move-object v1, v0

    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 643
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    .line 645
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 646
    .local v1, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    return-void
.end method

.method public remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .locals 8
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "logCmd"    # Ljava/lang/String;

    .prologue
    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v7

    .line 617
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 618
    .local v4, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v6, v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, p1, :cond_0

    .line 619
    move-object v1, v4

    move-object v2, v1

    .line 623
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v2, :cond_3

    .line 624
    :try_start_1
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v1, p1, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 625
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 627
    :goto_1
    iget v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 630
    iget v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    const/4 v5, 0x0

    .line 634
    .local v5, "result":Lcom/android/server/NativeDaemonEvent;
    :try_start_3
    iget-object v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, p2, p3, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/NativeDaemonEvent;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 636
    :goto_2
    if-nez v5, :cond_2

    .line 637
    const-string v6, "NativeDaemonConnector.ResponseQueue"

    const-string v7, "Timeout waiting for response"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_2
    return-object v5

    .line 631
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 635
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 631
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_3
    move-object v1, v2

    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1

    :cond_4
    move-object v2, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_0
.end method
