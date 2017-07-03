.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;
.super Landroid/os/Handler;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChangeHandler"
.end annotation


# instance fields
.field public final callbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsMediaChangeScheduled:Z

.field private m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

.field private m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

.field public final scheduledMediaChangeCallbacks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field public final thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    .line 339
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduledMediaChangeCallbacks:Ljava/util/Deque;

    .line 342
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    .line 343
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    .line 349
    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->thread:Ljava/lang/Thread;

    .line 350
    return-void
.end method

.method private clearTempCallbackHandles(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 400
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 400
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method private declared-synchronized copyCallbackHandles()I
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    .line 408
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleScheduledMediaChangeCallbacks()V
    .locals 9

    .prologue
    .line 428
    monitor-enter p0

    .line 430
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_IsMediaChangeScheduled:Z

    .line 431
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduledMediaChangeCallbacks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 432
    .local v8, "infoCount":I
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    array-length v1, v1

    if-ge v1, v8, :cond_0

    .line 433
    new-array v1, v8, [Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    iput-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    .line 434
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 435
    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduledMediaChangeCallbacks:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    aput-object v1, v2, v0

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduledMediaChangeCallbacks:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_IsMediaChangeScheduled:Z

    if-nez v1, :cond_2

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_IsMediaChangeScheduled:Z

    .line 439
    const/16 v1, 0x2715

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 441
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_3

    .line 446
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    aget-object v7, v1, v0

    .line 447
    .local v7, "info":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempMediaChangeInfos:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 448
    iget v1, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->what:I

    packed-switch v1, :pswitch_data_0

    .line 444
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    .end local v0    # "i":I
    .end local v7    # "info":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;
    .end local v8    # "infoCount":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 451
    .restart local v0    # "i":I
    .restart local v7    # "info":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;
    .restart local v8    # "infoCount":I
    :pswitch_1
    iget-wide v2, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->id:J

    iget-object v4, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    iget-object v5, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->media:Lcom/oneplus/gallery/media/Media;

    iget v6, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->flags:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callOnMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_2

    .line 454
    :pswitch_2
    iget-wide v2, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->id:J

    iget-object v4, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    iget-object v5, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->media:Lcom/oneplus/gallery/media/Media;

    iget v6, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->flags:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callOnMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_2

    .line 457
    :pswitch_3
    iget-wide v2, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->id:J

    iget-object v4, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->mediaType:Lcom/oneplus/gallery/media/MediaType;

    iget-object v5, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->media:Lcom/oneplus/gallery/media/Media;

    iget v6, v7, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;->flags:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_2

    .line 461
    .end local v7    # "info":Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;
    :cond_3
    return-void

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public callOnMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->copyCallbackHandles()I

    move-result v0

    .line 356
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 357
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;->onMediaCreated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 356
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 358
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->clearTempCallbackHandles(I)V

    .line 359
    return-void
.end method

.method public callOnMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->copyCallbackHandles()I

    move-result v0

    .line 365
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 366
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;->onMediaDeleted(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 365
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->clearTempCallbackHandles(I)V

    .line 368
    return-void
.end method

.method public callOnMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->copyCallbackHandles()I

    move-result v0

    .line 374
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 375
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;->onMediaRecycled(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 374
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->clearTempCallbackHandles(I)V

    .line 377
    return-void
.end method

.method public callOnMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->copyCallbackHandles()I

    move-result v0

    .line 383
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 384
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;->onMediaRestored(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 383
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 385
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->clearTempCallbackHandles(I)V

    .line 386
    return-void
.end method

.method public callOnMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p4, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->copyCallbackHandles()I

    move-result v0

    .line 392
    .local v0, "count":I
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 393
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_TempHandles:[Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;->onMediaUpdated(JLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    .line 392
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->clearTempCallbackHandles(I)V

    .line 395
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 418
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->handleScheduledMediaChangeCallbacks()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized scheduleMediaChangeCallback(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "id"    # J
    .param p4, "mediaType"    # Lcom/oneplus/gallery/media/MediaType;
    .param p5, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p6, "flags"    # I

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->scheduledMediaChangeCallbacks:Ljava/util/Deque;

    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeInfo;-><init>(IJLcom/oneplus/gallery/media/MediaType;Lcom/oneplus/gallery/media/Media;I)V

    invoke-interface {v7, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 467
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_IsMediaChangeScheduled:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->m_IsMediaChangeScheduled:Z

    .line 470
    const/16 v0, 0x2715

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
