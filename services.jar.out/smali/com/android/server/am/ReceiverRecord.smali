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
.field FF_Flag:I

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
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Looper;I)V
    .locals 2
    .param p1, "Service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "receiver"    # Landroid/os/IBinder;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "looper"    # Landroid/os/Looper;
    .param p8, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 45
    iput v0, p0, Lcom/android/server/am/ReceiverRecord;->FF_Flag:I

    .line 63
    iput-object p1, p0, Lcom/android/server/am/ReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    iput-object p2, p0, Lcom/android/server/am/ReceiverRecord;->mQueue:Lcom/android/server/am/BroadcastQueue;

    .line 65
    iput-object p3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 66
    iput-object p4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 67
    iput-object p5, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    .line 68
    iput-object p6, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 69
    iput-object p7, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    .line 70
    new-instance v0, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;-><init>(Lcom/android/server/am/ReceiverRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    .line 71
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p0, Lcom/android/server/am/ReceiverRecord;->pidSentTo:I

    .line 72
    iput p8, p0, Lcom/android/server/am/ReceiverRecord;->FF_Flag:I

    .line 62
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v0, "ReceiverRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote process died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ReceiverRecord;->pidSentTo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", drop the sent broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and cancel timeout. ReceiverRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverRecord;->cancelBroadcastTimeoutLocked()V

    .line 82
    return-void
.end method

.method final declared-synchronized broadcastTimeoutLocked(Z)V
    .locals 5
    .param p1, "fromMsg"    # Z

    .prologue
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 90
    .local v1, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 91
    const-string/jumbo v2, "ReceiverRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReceiverRecordbroadcastTimeoutLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const-string/jumbo v4, ", pid : "

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const-string/jumbo v4, ", thread : "

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    const/4 v0, 0x0

    .line 99
    .local v0, "anrMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast of "

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

    .line 106
    .end local v0    # "anrMessage":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    new-instance v3, Lcom/android/server/am/ReceiverRecord$AppNotResponding;

    iget-object v4, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/am/ReceiverRecord$AppNotResponding;-><init>(Lcom/android/server/am/ReceiverRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->post(Ljava/lang/Runnable;)Z

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 115
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 87
    return-void

    .line 94
    :cond_2
    :try_start_1
    const-string/jumbo v2, "ReceiverRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReceiverRecordbroadcastTimeoutLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const-string/jumbo v4, ", pid : null, thread : "

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v0    # "anrMessage":Ljava/lang/String;
    .restart local v1    # "thread":Ljava/lang/Thread;
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcast of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .local v0, "anrMessage":Ljava/lang/String;
    goto :goto_1
.end method

.method final declared-synchronized cancelBroadcastTimeoutLocked()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->removeMessages(ILjava/lang/Object;)V

    .line 126
    iget-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApp()Lcom/android/server/am/ProcessRecord;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 171
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
    .line 76
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverRecord;->binderLinked:Z

    .line 75
    :cond_0
    return-void
.end method

.method final declared-synchronized setBroadcastTimeoutLocked(J)V
    .locals 3
    .param p1, "timeoutTime"    # J

    .prologue
    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReceiverRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, " FF_Flag="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget v1, p0, Lcom/android/server/am/ReceiverRecord;->FF_Flag:I

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string/jumbo v1, " mQueue.mQueueName="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, " r= "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->r:Lcom/android/server/am/BroadcastRecord;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, " "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, " curApp "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "mIntent "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mIntent:Landroid/content/Intent;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, " mHandler "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord;->mHandler:Lcom/android/server/am/ReceiverRecord$BroadcastAppHandler;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "}"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
