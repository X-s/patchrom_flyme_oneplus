.class Lcom/android/server/power/PowerManagerService$5$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$5;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$5;)V
    .locals 0

    .prologue
    .line 3431
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3434
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenSwitchObserver:Landroid/os/UEventObserver;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/os/UEventObserver;

    move-result-object v10

    monitor-enter v10

    .line 3435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 3436
    .local v9, "power":Landroid/os/PowerManager;
    if-eqz v9, :cond_0

    .line 3437
    const/4 v1, 0x1

    const-string v2, "screen_switch"

    invoke-virtual {v9, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 3438
    .local v8, "partial":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3440
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$5$1;->this$1:Lcom/android/server/power/PowerManagerService$5;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3446
    :goto_0
    const v1, 0x3000001a

    :try_start_2
    const-string v2, "screen_switch"

    invoke-virtual {v9, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    .line 3449
    .local v7, "full":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3450
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3451
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3453
    .end local v7    # "full":Landroid/os/PowerManager$WakeLock;
    .end local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    :cond_0
    monitor-exit v10

    .line 3454
    return-void

    .line 3443
    .restart local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 3444
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3453
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "partial":Landroid/os/PowerManager$WakeLock;
    .end local v9    # "power":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
