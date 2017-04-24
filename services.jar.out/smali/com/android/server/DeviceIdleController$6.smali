.class Lcom/android/server/DeviceIdleController$6;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceIdleController;->getDozeModeEnabledObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    # invokes: Lcom/android/server/DeviceIdleController;->updateEnabledStatus()V
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)V

    .line 1591
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 1593
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 1594
    const-string v0, "DeviceIdleController"

    const-string v1, "Idle mode enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :goto_0
    return-void

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    const-string v1, "disabled"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 1597
    const-string v0, "DeviceIdleController"

    const-string v1, "Idle mode disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
