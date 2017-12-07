.class Lcom/android/server/BatteryService$Led$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$Led;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$Led;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1084
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-static {v3, v2}, Lcom/android/server/BatteryService$Led;->-set0(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1087
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->-get0(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    iget-object v2, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v2}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-static {v3, v1}, Lcom/android/server/BatteryService$Led;->-set0(Lcom/android/server/BatteryService$Led;Z)Z

    .line 1091
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    iget-object v3, v3, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get11(Lcom/android/server/BatteryService;)I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 1092
    .local v1, "plugged":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 1093
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->-get0(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1095
    :cond_3
    iget-object v3, p0, Lcom/android/server/BatteryService$Led$2;->this$1:Lcom/android/server/BatteryService$Led;

    invoke-static {v3}, Lcom/android/server/BatteryService$Led;->-get0(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
