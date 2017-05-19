.class Lcom/android/server/policy/OemShotScreenHelper$2;
.super Ljava/lang/Object;
.source "OemShotScreenHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemShotScreenHelper;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemShotScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemShotScreenHelper;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 63
    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    iget-object v5, v4, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 64
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    iget-object v4, v4, Lcom/android/server/policy/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_0

    .line 65
    monitor-exit v5

    .line 94
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 68
    .local v1, "messenger":Landroid/os/Messenger;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 69
    .local v2, "msg":Landroid/os/Message;
    move-object v3, p0

    .line 70
    .local v3, "myConn":Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/server/policy/OemShotScreenHelper$2$1;

    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    # getter for: Lcom/android/server/policy/OemShotScreenHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/OemShotScreenHelper;->access$100(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/server/policy/OemShotScreenHelper$2$1;-><init>(Lcom/android/server/policy/OemShotScreenHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 83
    .local v0, "h":Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 84
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 85
    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    # getter for: Lcom/android/server/policy/OemShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v4}, Lcom/android/server/policy/OemShotScreenHelper;->access$200(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    # getter for: Lcom/android/server/policy/OemShotScreenHelper;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v4}, Lcom/android/server/policy/OemShotScreenHelper;->access$200(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    # getter for: Lcom/android/server/policy/OemShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v4}, Lcom/android/server/policy/OemShotScreenHelper;->access$300(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/OemShotScreenHelper$2;->this$0:Lcom/android/server/policy/OemShotScreenHelper;

    # getter for: Lcom/android/server/policy/OemShotScreenHelper;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v4}, Lcom/android/server/policy/OemShotScreenHelper;->access$300(Lcom/android/server/policy/OemShotScreenHelper;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "messenger":Landroid/os/Messenger;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 91
    .restart local v0    # "h":Landroid/os/Handler;
    .restart local v1    # "messenger":Landroid/os/Messenger;
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "myConn":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 98
    return-void
.end method
