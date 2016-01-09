.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 668
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 669
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 670
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 671
    return-void
.end method

.method private delay(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 674
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 678
    .local v0, "bedtime":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 688
    .end local v0    # "bedtime":J
    :cond_1
    :goto_1
    return-void

    .line 685
    .restart local v0    # "bedtime":J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 686
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 691
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 692
    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 694
    .local v5, "pattern":[J
    array-length v4, v5

    .line 695
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$1500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 696
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 697
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 698
    .local v8, "usageHint":I
    const/4 v2, 0x0

    .line 699
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .local v0, "duration":J
    move v3, v2

    .line 701
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_7

    .line 703
    if-ge v3, v4, :cond_0

    .line 704
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    add-long/2addr v0, v10

    move v3, v2

    .line 708
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 709
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v9, :cond_3

    move v2, v3

    .line 729
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 730
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10

    .line 732
    :try_start_1
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v9, p0, :cond_1

    .line 733
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 735
    :cond_1
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_2

    .line 738
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 739
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 740
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 742
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 743
    return-void

    .line 713
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_3
    if-ge v3, v4, :cond_4

    .line 716
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v0, v5, v3

    .line 717
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_6

    .line 718
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII)V
    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JII)V

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 721
    :cond_4
    if-gez v6, :cond_5

    move v2, v3

    .line 722
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 724
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_5
    move v2, v6

    .line 725
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 730
    .end local v0    # "duration":J
    .end local v3    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 742
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    :cond_6
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    :cond_7
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method
