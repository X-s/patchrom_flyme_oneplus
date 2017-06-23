.class final Lcom/android/server/am/ReceiverRecord;
.super Ljava/lang/Object;
.source "ReceiverRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ReceiverRecord$AppNotResponding;,
        Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;
    }
.end annotation


# static fields
.field static final BROADCAST_TIMEOUT_MSG_APP:I = 0x1

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ReceiverRecord"


# instance fields
.field binderLinked:Z

.field curApp:Lcom/android/server/am/ProcessRecord;

.field final mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

.field mIntent:Landroid/content/Intent;

.field mLooper:Landroid/os/Looper;

.field mQueue:Lcom/android/server/am/BroadcastQueue;

.field mReceiver:Landroid/os/IBinder;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field pidSentTo:I

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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 46
    iput-object p1, p0, Lcom/android/server/am/ReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iput-object p2, p0, Lcom/android/server/am/ReceiverRecord;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 48
    iput-object p3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 49
    iput-object p4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 50
    iput-object p5, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    .line 51
    iput-object p6, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 52
    iput-object p7, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    .line 53
    new-instance v0, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;-><init>(Lcom/android/server/am/ReceiverRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p0, Lcom/android/server/am/ReceiverRecord;->pidSentTo:I

    .line 55
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 65
    const-string v0, "ReceiverRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote process died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ReceiverRecord;->pidSentTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop the sent broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and cancel timeout. ReceiverRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverRecord;->cancelBroadcastTimeoutLocked()V

    .line 67
    return-void
.end method

.method final declared-synchronized broadcastTimeoutLocked(Z)V
    .locals 5
    .param p1, "fromMsg"    # Z

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 72
    .local v1, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "ReceiverRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReceiverRecordbroadcastTimeoutLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    const/4 v0, 0x0

    .line 81
    .local v0, "anrMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 83
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

    .line 88
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "anrMessage":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "ReceiverRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReceiverRecordbroadcastTimeoutLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid : null, thread : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v0    # "anrMessage":Ljava/lang/String;
    .restart local v1    # "thread":Ljava/lang/Thread;
    :cond_3
    :try_start_2
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

    goto :goto_1

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    new-instance v3, Lcom/android/server/am/ReceiverRecord$AppNotResponding;

    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/am/ReceiverRecord$AppNotResponding;-><init>(Lcom/android/server/am/ReceiverRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->post(Ljava/lang/Runnable;)Z

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 97
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 99
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method final declared-synchronized cancelBroadcastTimeoutLocked()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->removeMessages(ILjava/lang/Object;)V

    .line 108
    iget-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApp()Lcom/android/server/am/ProcessRecord;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public linkBinder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 62
    :cond_0
    return-void
.end method

.method final declared-synchronized setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
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
