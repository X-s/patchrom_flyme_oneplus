.class Lcom/android/server/am/OnePlusProcessManager$1;
.super Landroid/app/IUidObserver$Stub;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidGone(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusProcessManager;->removeUidStateLocked(I)V

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onUidStateChanged(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->updateUidStateLocked(II)V

    .line 431
    monitor-exit v1

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
