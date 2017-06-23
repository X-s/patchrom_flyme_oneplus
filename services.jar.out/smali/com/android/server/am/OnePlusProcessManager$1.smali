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
    .line 383
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
    .line 393
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusProcessManager;->removeUidStateLocked(I)V

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
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
    .line 386
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->updateUidStateLocked(II)V

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
