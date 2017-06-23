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
    .line 1209
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenStateReceiver: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTrafficWhiteList()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1900(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1215
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2000(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1216
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 1217
    sput-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 1218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->screenOffTime:J

    .line 1219
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2200()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    add-long/2addr v2, v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2100()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1224
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->removeTrafficWhiteList()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1900(Lcom/android/server/am/OnePlusProcessManager;)V

    .line 1225
    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    .line 1226
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2200()Landroid/app/AlarmManager;

    move-result-object v1

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2100()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1227
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2200()Landroid/app/AlarmManager;

    move-result-object v1

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mScreenOffFozenCheckIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1228
    :cond_2
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1241
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->ASSERTCHECK:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1242
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mReportWakelockList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1246
    :cond_3
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_CHECKFORZEN:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
