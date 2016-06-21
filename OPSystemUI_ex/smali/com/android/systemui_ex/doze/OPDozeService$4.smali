.class Lcom/android/systemui_ex/doze/OPDozeService$4;
.super Ljava/lang/Object;
.source "OPDozeService.java"

# interfaces
.implements Lcom/android/systemui_ex/doze/DozeHost$Callback;


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
    .line 423
    iput-object p1, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuzzBeepBlinked()V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBuzzBeepBlinked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->updateNotificationPulse(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1200(Lcom/android/systemui_ex/doze/OPDozeService;J)V

    .line 435
    return-void
.end method

.method public onNewNotifications()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNewNotifications (noop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->updateNotificationPulse(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1200(Lcom/android/systemui_ex/doze/OPDozeService;J)V

    .line 429
    return-void
.end method

.method public onNotificationLight(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$600(Lcom/android/systemui_ex/doze/OPDozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationLight on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # setter for: Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z
    invoke-static {v0, p1}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1302(Lcom/android/systemui_ex/doze/OPDozeService;Z)Z

    .line 448
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mPowerSaveActive:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1300(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # getter for: Lcom/android/systemui_ex/doze/OPDozeService;->mDreaming:Z
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$100(Lcom/android/systemui_ex/doze/OPDozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui_ex/doze/OPDozeService$4;->this$0:Lcom/android/systemui_ex/doze/OPDozeService;

    # invokes: Lcom/android/systemui_ex/doze/OPDozeService;->finishToSavePower()V
    invoke-static {v0}, Lcom/android/systemui_ex/doze/OPDozeService;->access$1400(Lcom/android/systemui_ex/doze/OPDozeService;)V

    .line 451
    :cond_0
    return-void
.end method
