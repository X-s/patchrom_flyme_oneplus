.class Lcom/android/internal/policy/impl/OemShotScreenHelper$1;
.super Ljava/lang/Object;
.source "OemShotScreenHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemShotScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OemShotScreenHelper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v1, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    # getter for: Lcom/android/internal/policy/impl/OemShotScreenHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->access$000(Lcom/android/internal/policy/impl/OemShotScreenHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v2, v2, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemShotScreenHelper$1;->this$0:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 43
    :cond_0
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
