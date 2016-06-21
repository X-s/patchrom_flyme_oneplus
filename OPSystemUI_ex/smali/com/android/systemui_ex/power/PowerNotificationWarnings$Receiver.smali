.class final Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings;
    .param p2, "x1"    # Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 384
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "PNW.batterySettings"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v0, "PNW.startSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v0, "PNW.stopSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v0, "PNW.dismissedWarning"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$200(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 390
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "action":Ljava/lang/String;
    const-string v1, "PowerUI.Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v1, "PNW.batterySettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    .line 398
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const-string v1, "PNW.startSaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    .line 401
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showStartSaverConfirmation()V
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    goto :goto_0

    .line 402
    :cond_2
    const-string v1, "PNW.stopSaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissSaverNotification()V
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$700(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    .line 404
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V

    .line 405
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->setSaverMode(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$800(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Z)V

    goto :goto_0

    .line 406
    :cond_3
    const-string v1, "PNW.dismissedWarning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    invoke-virtual {v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto :goto_0
.end method
