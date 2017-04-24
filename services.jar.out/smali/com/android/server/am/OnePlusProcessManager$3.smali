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

    .prologue
    .line 1374
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

    .line 1376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "action":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    .line 1378
    const-string v4, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mScreenStateReceiver: action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1380
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2600(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1381
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1382
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 1383
    sput-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/OnePlusProcessManager;->screenOffTime:J

    .line 1385
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2800()Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    add-long/2addr v6, v8

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1437
    :cond_1
    :goto_0
    return-void

    .line 1387
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1390
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2600(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1391
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1392
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    .line 1393
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2800()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1394
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2800()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2900()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1395
    :cond_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1396
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1397
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$3200(Lcom/android/server/am/OnePlusProcessManager;)V

    goto :goto_0

    .line 1398
    :cond_4
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1399
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1400
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/android/server/am/OnePlusProcessManager;->mReportWakelockList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1403
    :cond_5
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1415
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1417
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1418
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3500()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1421
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1422
    .local v2, "plugged":I
    if-eqz v2, :cond_6

    move v4, v5

    :goto_1
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$302(Z)Z

    .line 1423
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$300()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1424
    const-string v4, "mCharging"

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcess(Ljava/lang/String;)V

    .line 1425
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->access$3602(Z)Z

    goto/16 :goto_0

    :cond_6
    move v4, v6

    .line 1422
    goto :goto_1

    .line 1426
    :cond_7
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3600()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1427
    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->access$3602(Z)Z

    .line 1429
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v4, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1430
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 1431
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1432
    .local v3, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendUid(IJ)V
    invoke-static {v4, v6, v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1434
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_8
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
