.class Lcom/android/server/DeviceIdleController$9;
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
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-wrap0(Lcom/android/server/DeviceIdleController;)V

    .line 2368
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get5(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2369
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 2370
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2371
    const-string/jumbo v0, "DeviceIdleController"

    const-string/jumbo v1, "Idle mode enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    :goto_0
    return-void

    .line 2373
    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$9;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v1, "disabled"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2374
    const-string/jumbo v0, "DeviceIdleController"

    const-string/jumbo v1, "Idle mode disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
