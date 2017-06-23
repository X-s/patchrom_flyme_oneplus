.class Lcom/android/server/am/ActivityManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 6924
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x1b

    const/4 v5, -0x1

    .line 6927
    invoke-static {}, Landroid/util/OpFeatures;->isBackgroundDetectionOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6946
    :cond_0
    :goto_0
    return-void

    .line 6930
    :cond_1
    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6931
    .local v1, "level":I
    const-string v4, "scale"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 6932
    .local v3, "scale":I
    if-eqz v3, :cond_0

    .line 6935
    mul-int/lit8 v4, v1, 0x64

    div-int v0, v4, v3

    .line 6936
    .local v0, "batteryPct":I
    const/16 v4, 0x64

    if-gt v0, v4, :cond_0

    if-ltz v0, :cond_0

    .line 6939
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mLastBatteryPercent:I

    sub-int/2addr v4, v0

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 6940
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Batt level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mLastBatteryPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6941
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 6942
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 6943
    .local v2, "nmsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6945
    .end local v2    # "nmsg":Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastBatteryPercent:I

    goto :goto_0
.end method
