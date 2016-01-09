.class Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;
.super Landroid/os/Handler;
.source "OemShotScreenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemShotScreenHelper$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iput-object p3, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v1, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OemShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->access$000(Lcom/android/internal/policy/impl/OemShotScreenHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OemShotScreenHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->access$100(Lcom/android/internal/policy/impl/OemShotScreenHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$2$1;->this$1:Lcom/android/internal/policy/impl/OemShotScreenHelper$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemShotScreenHelper$2;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
