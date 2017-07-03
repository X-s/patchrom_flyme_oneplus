.class Lcom/oneplus/base/PeriodicMessageDispatcherImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "PeriodicMessageDispatcherImpl.java"

# interfaces
.implements Lcom/oneplus/base/PeriodicMessageDispatcher;


# static fields
.field private static final DURATION_HANDLE_SCHDULED_MESSAGES:I = 0xa

.field private static final MAX_MESSAGE_COUNTS_PER_HANDLED:I = 0x64

.field private static final MSG_HANDLE_SCHEDULED_MESSAGES:I = -0x11171

.field private static final MSG_PAUSE:I = -0x11175

.field private static final MSG_RESUME:I = -0x11176


# instance fields
.field private final SYNC_FIELDS:Ljava/lang/Object;

.field private volatile m_HasMessage:Z

.field private volatile m_IsPaused:Z

.field private final m_ScheduledMessages:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/base/component/ComponentOwner;)V
    .locals 2
    .param p1, "owner"    # Lcom/oneplus/base/component/ComponentOwner;

    .prologue
    .line 35
    const-string v0, "Periodic Message Dispatcher Impl"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    .line 36
    return-void
.end method

.method private handleScheduledMessages()V
    .locals 7

    .prologue
    .line 64
    iget-object v6, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    monitor-enter v6

    .line 66
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    .line 64
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-boolean v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_IsPaused:Z

    if-eqz v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 64
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    iget-object v6, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    monitor-enter v6

    .line 78
    :try_start_2
    iget-object v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    monitor-exit v6

    goto :goto_0

    .line 75
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 83
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "partialScheduledList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Message;>;"
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_1
    const/16 v5, 0x64

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .local v2, "msg":Landroid/os/Message;
    if-nez v2, :cond_5

    .line 88
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 89
    invoke-direct {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->sendHandleScheduledMessage()V

    .line 75
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 94
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 96
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 97
    .restart local v2    # "msg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_5
    :try_start_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private sendHandleScheduledMessage()V
    .locals 6

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_IsPaused:Z

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_IsPaused:Z

    if-eqz v0, :cond_3

    .line 199
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 202
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v2, -0x11171

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->handleScheduledMessages()V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->pause()V

    goto :goto_0

    .line 54
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->resume()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch -0x11176
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_IsPaused:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, -0x11171

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    :goto_0
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, -0x11175

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public removeMessages(Landroid/os/Handler;I)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 125
    iget-object v3, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 136
    iget-object v4, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_HasMessage:Z

    .line 136
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v4, -0x11171

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    :cond_1
    monitor-exit v3

    .line 143
    return-void

    .line 130
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 131
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_0

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 125
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 136
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->SYNC_FIELDS:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_IsPaused:Z

    .line 154
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->sendHandleScheduledMessage()V

    .line 152
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    :goto_0
    return-void

    .line 154
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 152
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, -0x11176

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public scheduleMessage(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "flags"    # I

    .prologue
    .line 171
    iget-object v3, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    monitor-enter v3

    .line 173
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->m_ScheduledMessages:Ljava/util/Deque;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-direct {p0}, Lcom/oneplus/base/PeriodicMessageDispatcherImpl;->sendHandleScheduledMessage()V

    .line 171
    monitor-exit v3

    .line 186
    return-void

    .line 178
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 179
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
