.class Lcom/android/server/am/OnePlusProcessManager$1;
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
    .line 913
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "action":Ljava/lang/String;
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mScreenStateReceiver: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 918
    invoke-static {v7}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 919
    sput-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 920
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusProcessManager;->screenOffTime:J

    .line 922
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->computeScreenOffTraffic()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2100(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 923
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    add-long/2addr v6, v8

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2200()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    invoke-static {v10}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    .line 930
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2200()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 931
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1900()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 932
    :cond_2
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 933
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkScreenOffForceStop()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2400(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 934
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkScreenOffSuspendProcess()Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2500(Lcom/android/server/am/OnePlusProcessManager;)Z

    move-result v1

    .line 935
    .local v1, "mFozenAgain":Z
    sput v7, Lcom/android/server/am/OnePlusProcessManager;->mFozenCount:I

    .line 936
    if-eqz v1, :cond_0

    .line 937
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->currentCheckForzenDelayLocked(J)J

    move-result-wide v2

    .line 938
    .local v2, "alarmTime":J
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1900()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v8, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 940
    sput-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    goto :goto_0

    .line 942
    .end local v1    # "mFozenAgain":Z
    .end local v2    # "alarmTime":J
    :cond_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 943
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 944
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/android/server/am/OnePlusProcessManager;->mReportWakelockList:Ljava/util/ArrayList;

    .line 945
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkScreenOffWakeLockForceStop()V
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2700(Lcom/android/server/am/OnePlusProcessManager;)V

    goto :goto_0

    .line 947
    :cond_4
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkSceenOffSuspendFailToFrozen()Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$2900(Lcom/android/server/am/OnePlusProcessManager;)Z

    move-result v1

    .line 949
    .restart local v1    # "mFozenAgain":Z
    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mFozenCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/am/OnePlusProcessManager;->mFozenCount:I

    .line 950
    if-eqz v1, :cond_5

    .line 951
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->currentCheckForzenDelayLocked(J)J

    move-result-wide v2

    .line 952
    .restart local v2    # "alarmTime":J
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1900()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v8, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 954
    sput-boolean v10, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    goto/16 :goto_0

    .line 956
    .end local v2    # "alarmTime":J
    :cond_5
    sput-boolean v7, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    goto/16 :goto_0
.end method
