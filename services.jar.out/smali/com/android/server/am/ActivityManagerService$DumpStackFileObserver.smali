.class public Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpStackFileObserver"
.end annotation


# static fields
.field static final NATIVE_DUMP_TIMEOUT_MS:I = 0x7d0

.field private static final TRACE_DUMP_TIMEOUT_MS:I = 0x2710


# instance fields
.field private mClosed:Z

.field private final mTracesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tracesPath"    # Ljava/lang/String;

    .prologue
    .line 6389
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6390
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6388
    return-void
.end method


# virtual methods
.method public dumpWithTimeout(IJ)J
    .locals 18
    .param p1, "pid"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 6400
    const/4 v3, 0x3

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 6401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 6403
    .local v8, "start":J
    const-wide/16 v14, 0x2710

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 6404
    .local v12, "waitTime":J
    monitor-enter p0

    .line 6406
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 6414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 6415
    .local v10, "timeWaited":J
    cmp-long v3, v10, p2

    if-ltz v3, :cond_0

    .line 6416
    return-wide v10

    .line 6407
    .end local v10    # "timeWaited":J
    :catch_0
    move-exception v2

    .line 6408
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6404
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6419
    .restart local v10    # "timeWaited":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    if-nez v3, :cond_1

    .line 6420
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Didn\'t see close of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for pid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 6421
    const-string/jumbo v15, ". Attempting native stack collection."

    .line 6420
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6424
    const-wide/16 v14, 0x7d0

    sub-long v16, p2, v10

    .line 6423
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 6426
    .local v6, "nativeDumpTimeoutMs":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6427
    const-wide/16 v14, 0x3e8

    div-long v14, v6, v14

    long-to-int v14, v14

    .line 6426
    move/from16 v0, p1

    invoke-static {v0, v3, v14}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)V

    .line 6430
    .end local v6    # "nativeDumpTimeoutMs":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6431
    .local v4, "end":J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6433
    sub-long v14, v4, v8

    return-wide v14
.end method

.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 6395
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6396
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 6394
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
