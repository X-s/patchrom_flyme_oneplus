.class final Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdaterWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    .line 446
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 452
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 453
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 454
    .local v3, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/ArrayMap;

    move-result-object v5

    monitor-enter v5

    .line 457
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mUpdaterList:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 458
    monitor-exit v5

    .line 459
    if-nez v3, :cond_0

    .line 472
    :goto_0
    return-void

    .line 458
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 466
    :cond_0
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$UpdaterWorkerHandler;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 471
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
