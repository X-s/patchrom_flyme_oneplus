.class final Lcom/android/server/am/ReceiverRecord;
.super Ljava/lang/Object;
.source "ReceiverRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ReceiverRecord$AppNotResponding;,
        Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_TIMEOUT_MSG_APP:I = 0x1

.field static final DEBUG_BROADCAST:Z = false

.field static final TAG:Ljava/lang/String; = "ReceiverRecord"


# instance fields
.field curApp:Lcom/android/server/am/ProcessRecord;

.field final mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

.field mIntent:Landroid/content/Intent;

.field mLooper:Landroid/os/Looper;

.field mQueue:Lcom/android/server/am/BroadcastQueue;

.field mReceiver:Landroid/os/IBinder;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field r:Lcom/android/server/am/BroadcastRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Looper;)V
    .locals 2
    .param p1, "Service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "receiver"    # Landroid/os/IBinder;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/ReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 44
    iput-object p2, p0, Lcom/android/server/am/ReceiverRecord;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 45
    iput-object p3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 46
    iput-object p4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 47
    iput-object p5, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    .line 48
    iput-object p6, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 49
    iput-object p7, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    .line 50
    new-instance v0, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;-><init>(Lcom/android/server/am/ReceiverRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    .line 51
    return-void
.end method


# virtual methods
.method final declared-synchronized broadcastTimeoutLocked(Z)V
    .locals 5
    .param p1, "fromMsg"    # Z

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 57
    .local v1, "thread":Ljava/lang/Thread;
    const-string v2, "ReceiverRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReceiverRecordbroadcastTimeoutLocked this  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "curApp.pid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " thread.getName() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "anrMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v3, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 64
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    new-instance v3, Lcom/android/server/am/ReceiverRecord$AppNotResponding;

    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/am/ReceiverRecord$AppNotResponding;-><init>(Lcom/android/server/am/ReceiverRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->post(Ljava/lang/Runnable;)Z

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    .end local v0    # "anrMessage":Ljava/lang/String;
    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final declared-synchronized cancelBroadcastTimeoutLocked()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->removeMessages(ILjava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApp()Lcom/android/server/am/ProcessRecord;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method final declared-synchronized setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mQueue.mQueueName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
