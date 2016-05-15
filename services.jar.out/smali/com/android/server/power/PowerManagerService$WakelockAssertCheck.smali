.class Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakelockAssertCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    }
.end annotation


# static fields
.field private static final ATAG:Ljava/lang/String; = "AssertLock"

.field private static final A_ASSERT:J = 0x927c0L

.field private static final DCS_MORE_DEBUG_INFO:Z = false

.field private static final MSG_SCREEN_ON_WAKELOCK_CHECK:I = 0x4

.field private static final MSG_WAKELOCK_REPORT:I = 0x2

.field private static final MSG_WAKELOCK_RESTAMP:I = 0x3

.field private static final MSG_WAKELOCK_TIMEOUT_CHECK:I = 0x1


# instance fields
.field private ASSERTCHECK:Ljava/lang/String;

.field private intervalScreenoff:J

.field private mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

.field private mHandlerThreadCheck:Landroid/os/HandlerThread;

.field private mReportHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field private timeStampScreenoff:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 3

    .prologue
    .line 3832
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    .line 3825
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    .line 3831
    const-string v1, "com.oneplus.android.assertCheck"

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ASSERTCHECK:Ljava/lang/String;

    .line 3833
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WakelockAssert"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    .line 3834
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 3835
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerThreadCheck:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;-><init>(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    .line 3837
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3838
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WakelockCheck"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    .line 3839
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mWakeLockCheck:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3840
    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3815
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->assertCheck()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;

    .prologue
    .line 3815
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->restampWakeLock()V

    return-void
.end method

.method private assertCheck()V
    .locals 22

    .prologue
    .line 3880
    const/4 v8, 0x0

    .line 3881
    .local v8, "isAudioMixWsNull":Z
    const-wide/16 v6, 0x0

    .line 3882
    .local v6, "holdAudioMix":J
    const/4 v15, 0x0

    .line 3883
    .local v15, "uidAudioMix":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 3885
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 3886
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3887
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3890
    .local v16, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move/from16 v17, v0

    const v19, 0xffff

    and-int v17, v17, v19

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 3887
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3894
    :cond_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    move-wide/from16 v20, v0

    sub-long v4, v12, v20

    .line 3895
    .local v4, "hold":J
    const-wide/32 v20, 0x927c0

    cmp-long v17, v4, v20

    if-ltz v17, :cond_0

    .line 3899
    const-wide/16 v20, 0x3e8

    div-long v4, v4, v20

    .line 3900
    const-string v17, "PowerManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "assertCheck "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3902
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/WorkSource;->size()I

    move-result v11

    .line 3903
    .local v11, "size":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    if-ge v9, v11, :cond_0

    .line 3904
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/os/WorkSource;->get(I)I

    move-result v14

    .line 3905
    .local v14, "uid":I
    const/16 v17, 0x2710

    move/from16 v0, v17

    if-lt v14, v0, :cond_2

    .line 3906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3903
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3910
    .end local v9    # "k":I
    .end local v11    # "size":I
    .end local v14    # "uid":I
    :cond_3
    move-object/from16 v0, v16

    iget v14, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 3912
    .restart local v14    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3915
    .end local v2    # "N":I
    .end local v3    # "i":I
    .end local v4    # "hold":J
    .end local v14    # "uid":I
    .end local v16    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .restart local v2    # "N":I
    .restart local v3    # "i":I
    :cond_4
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3918
    .local v10, "len":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->reportAssertListForceStop()V

    .line 3919
    return-void
.end method

.method private reportAssertListForceStop()V
    .locals 7

    .prologue
    .line 3857
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3858
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3860
    .local v3, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3861
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3862
    .local v4, "wakeLockTimeoutUid":I
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3860
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3865
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3866
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3869
    .end local v4    # "wakeLockTimeoutUid":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 3870
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->ASSERTCHECK:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3871
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3872
    const-string v5, "type"

    const-string v6, "wakelock"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3873
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3874
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3875
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3877
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private restampWakeLock()V
    .locals 6

    .prologue
    .line 3922
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3923
    .local v2, "uptime":J
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 3925
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3926
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAssertTime:J

    .line 3924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3928
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    monitor-exit v5

    .line 3929
    return-void

    .line 3928
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public assertOnScreenOff()V
    .locals 4

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3851
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    .line 3853
    return-void
.end method

.method public assertOnScreenOn()V
    .locals 4

    .prologue
    .line 3843
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->timeStampScreenoff:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->intervalScreenoff:J

    .line 3844
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mHandlerCheck:Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck$WorkerHandler;->removeMessages(I)V

    .line 3845
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3846
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakelockAssertCheck;->mReportHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3847
    return-void
.end method
