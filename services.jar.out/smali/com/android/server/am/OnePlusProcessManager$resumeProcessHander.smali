.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 798
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 799
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 803
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 804
    .local v2, "pid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 805
    .local v3, "uid":I
    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 809
    const-string v4, "relate process"

    const/4 v5, 0x1

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsRelateProcess(ILjava/lang/String;Z)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(ILjava/lang/String;Z)Z

    .line 810
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->screen_on_forzen_enable:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$700()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getScreenState()Z

    move-result v4

    if-nez v4, :cond_3

    .line 812
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessageForUid(I)V
    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 814
    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getScreenState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 815
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->isFozenDelay:Z

    if-nez v4, :cond_4

    .line 816
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->currentCheckForzenDelayLocked(J)J

    move-result-wide v0

    .line 817
    .local v0, "alarmTime":J
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2000()Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x3

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1900()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 820
    .end local v0    # "alarmTime":J
    :cond_4
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenFail:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 821
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenFail:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
