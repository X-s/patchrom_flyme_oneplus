.class Lcom/android/server/am/ActivityManagerService$3;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
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
    .line 1396
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1399
    const/4 v1, 0x0

    .line 1401
    .local v1, "timeoutShutdown":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->isDeviceProvisioned()Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1403
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPointerEventListenerRegistered:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1404
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Landroid/view/WindowManagerPolicy$PointerEventListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1405
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->mPointerEventListenerRegistered:Z
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$002(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 1407
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1408
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    :cond_1
    if-eqz v1, :cond_2

    .line 1427
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    .line 1430
    :cond_2
    :goto_0
    return-void

    .line 1412
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1413
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLastInputEvent:J
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 1414
    const/4 v1, 0x1

    .line 1416
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1417
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAutoShutdownWakelock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    :cond_4
    :goto_1
    if-eqz v1, :cond_2

    .line 1427
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    goto :goto_0

    .line 1421
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTurnOffScreenIfSetupIdle:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/32 v6, 0x2bf20

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1423
    .end local v2    # "now":J
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in pointer handler. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1426
    if-eqz v1, :cond_2

    .line 1427
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    goto :goto_0

    .line 1426
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_6

    .line 1427
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowManagerService;->shutdown(Z)V

    :cond_6
    throw v4
.end method
