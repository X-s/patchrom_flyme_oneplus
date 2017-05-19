.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 355
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 356
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    .line 350
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private static final tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p0, "token"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    const/4 v1, 0x0

    .line 420
    if-nez p0, :cond_1

    move-object v0, v1

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 424
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 425
    goto :goto_0
.end method


# virtual methods
.method public getKeyDispatchingTimeout()J
    .locals 5

    .prologue
    .line 409
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 410
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 411
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 412
    const-wide/16 v2, 0x0

    monitor-exit v4

    .line 415
    :goto_0
    return-wide v2

    .line 414
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_0

    .line 416
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 397
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 398
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_0

    .line 399
    monitor-exit v5

    .line 404
    :goto_0
    return v4

    .line 401
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 402
    .local v2, "anrActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 403
    .local v1, "anrApp":Lcom/android/server/am/ProcessRecord;
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 402
    .end local v1    # "anrApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 403
    .end local v2    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .locals 3

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 362
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 363
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawnLocked()V

    .line 366
    :cond_0
    monitor-exit v2

    .line 367
    return-void

    .line 366
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowsGone()V
    .locals 3

    .prologue
    .line 381
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 382
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 383
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 385
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 386
    monitor-exit v2

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowsVisible()V
    .locals 3

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 372
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 373
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisibleLocked()V

    .line 376
    :cond_0
    monitor-exit v2

    .line 377
    return-void

    .line 376
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
