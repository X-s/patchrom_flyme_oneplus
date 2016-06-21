.class Lcom/android/systemui_ex/doze/OPDozeService$3;
.super Landroid/content/BroadcastReceiver;
.source "OPDozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/doze/OPDozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/doze/OPDozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/doze/OPDozeService;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

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

    .line 401
    const-string v2, "OPDozeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recive broadcast intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v2, "com.android.systemui.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Received pulse intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->access$700(Lcom/android/systemui_ex/doze/OPDozeService;I)V

    .line 406
    :cond_0
    const-string v2, "com.android.systemui.doze.notification_pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    const-string v2, "instance"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 408
    .local v0, "instance":J
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification pulse intent instance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v0, v1}, Lcom/android/systemui_ex/doze/DozeLog;->traceNotificationPulse(J)V

    .line 410
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->requestPulse(I)V
    invoke-static {v2, v6}, Lcom/android/systemui_ex/doze/OPDozeService;->access$700(Lcom/android/systemui_ex/doze/OPDozeService;I)V

    .line 411
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    iget-object v3, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mNotificationLightOn:Z
    invoke-static {v3}, Lcom/android/systemui_ex/doze/OPDozeService;->access$800(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v3

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->rescheduleNotificationPulse(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->access$900(Lcom/android/systemui_ex/doze/OPDozeService;Z)V

    .line 414
    .end local v0    # "instance":J
    :cond_1
    sget-object v2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # setter for: Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z
    invoke-static {v2, v6}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1002(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z

    .line 416
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mCarMode:Z
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1000(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    iget-object v2, p0, Lcom/android/systemui_ex/doze/OPDozeService$3;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->finishForCarMode()V
    invoke-static {v2}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1100(Lcom/android/systemui_ex/doze/OPDozeService;)V

    .line 420
    :cond_2
    return-void
.end method
