.class Lcom/android/server/policy/PhoneWindowManager$15;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5119
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 5122
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5123
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v5, p0, :cond_0

    .line 5124
    monitor-exit v6

    .line 5160
    :goto_0
    return-void

    .line 5126
    :cond_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 5127
    .local v2, "messenger":Landroid/os/Messenger;
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 5128
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    .line 5129
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$15$1;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager$15$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$15;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 5141
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5142
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 5143
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5144
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 5145
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5146
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->arg2:I

    .line 5149
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_3

    .line 5150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5151
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "focusWindow"

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$15;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5152
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5156
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5159
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 5157
    .restart local v1    # "h":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    .restart local v3    # "msg":Landroid/os/Message;
    .restart local v4    # "myConn":Landroid/content/ServiceConnection;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 5162
    return-void
.end method
