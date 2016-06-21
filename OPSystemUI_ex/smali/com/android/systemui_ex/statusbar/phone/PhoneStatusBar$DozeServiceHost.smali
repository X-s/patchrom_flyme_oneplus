.class final Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 2

    .prologue
    .line 5459
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 5467
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    .line 5560
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 5459
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 5459
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .param p1, "x1"    # Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;
    .param p2, "x2"    # I

    .prologue
    .line 5459
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handlePulseWhileDozing(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .prologue
    .line 5459
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->handleStopDozing()V

    return-void
.end method

.method private handlePulseWhileDozing(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 5548
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/statusbar/phone/DozeScrimController;->pulse(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V

    .line 5549
    return-void
.end method

.method private handleStartDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ready"    # Ljava/lang/Runnable;

    .prologue
    .line 5538
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5539
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8702(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5540
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 5541
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozing()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5542
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozingState()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5544
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5545
    return-void
.end method

.method private handleStopDozing()V
    .locals 2

    .prologue
    .line 5552
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5553
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozingRequested:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8702(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5554
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozing:Z
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui_ex/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 5555
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozing()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5556
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->updateDozingState()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5558
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .prologue
    .line 5504
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5505
    return-void
.end method

.method public fireBuzzBeepBlinked()V
    .locals 3

    .prologue
    .line 5484
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .line 5485
    .local v0, "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/android/systemui_ex/doze/DozeHost$Callback;->onBuzzBeepBlinked()V

    goto :goto_0

    .line 5487
    .end local v0    # "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public fireNewNotifications()V
    .locals 3

    .prologue
    .line 5497
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .line 5498
    .local v0, "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/android/systemui_ex/doze/DozeHost$Callback;->onNewNotifications()V

    goto :goto_0

    .line 5500
    .end local v0    # "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public fireNotificationLight(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5490
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mNotificationLightOn:Z

    .line 5491
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .line 5492
    .local v0, "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui_ex/doze/DozeHost$Callback;->onNotificationLight(Z)V

    goto :goto_0

    .line 5494
    .end local v0    # "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 5478
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .line 5479
    .local v0, "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui_ex/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    .line 5481
    .end local v0    # "callback":Lcom/android/systemui_ex/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public isPowerSaveActive()Z
    .locals 1

    .prologue
    .line 5529
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseWhileDozing(Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui_ex/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 5519
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5520
    return-void
.end method

.method public removeCallback(Lcom/android/systemui_ex/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui_ex/doze/DozeHost$Callback;

    .prologue
    .line 5509
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5510
    return-void
.end method

.method public startDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ready"    # Ljava/lang/Runnable;

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5515
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mHandler:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5525
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
