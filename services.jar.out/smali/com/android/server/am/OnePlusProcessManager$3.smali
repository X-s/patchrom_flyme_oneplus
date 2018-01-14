.class Lcom/android/server/am/OnePlusProcessManager$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1486
    const-string/jumbo v4, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mScreenStateReceiver: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1488
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->-wrap10(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1489
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1490
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 1491
    sput-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 1492
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1493
    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 1492
    add-long/2addr v6, v8

    .line 1493
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get18()Landroid/app/PendingIntent;

    move-result-object v8

    .line 1492
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1483
    :cond_1
    :goto_0
    return-void

    .line 1494
    :cond_2
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1497
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->-wrap10(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1498
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1499
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    .line 1500
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get7()Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get18()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1501
    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1503
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->-wrap8(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1504
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->-wrap17(Lcom/android/server/am/OnePlusProcessManager;)V

    goto :goto_0

    .line 1505
    :cond_4
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1506
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get6()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1507
    return-void

    .line 1510
    :cond_5
    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1511
    .local v2, "plugged":I
    if-eqz v2, :cond_6

    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->-set1(Z)Z

    .line 1512
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get12()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1513
    const-string/jumbo v4, "mCharging"

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcess(Ljava/lang/String;)V

    .line 1514
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->-set3(Z)Z

    goto :goto_0

    :cond_6
    move v4, v6

    .line 1511
    goto :goto_1

    .line 1515
    :cond_7
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get17()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1516
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->-set3(Z)Z

    .line 1518
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v4, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 1520
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1521
    .local v3, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v4, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->-wrap14(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_8
    monitor-exit v5

    goto/16 :goto_0

    .line 1518
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
