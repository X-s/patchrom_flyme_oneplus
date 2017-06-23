.class Lcom/android/server/pm/PackageManagerService$27;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16719
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16731
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16735
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->unfreezePackage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 16737
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 16738
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_0

    .line 16756
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/4 v4, -0x6

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 16760
    :goto_0
    return-void

    .line 16740
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/16 v4, -0x64

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 16743
    const/4 v0, 0x1

    .line 16744
    .local v0, "DEBUG_SDCARD":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/pm/PackageManagerService;->mLastSecureContainerList:[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6702(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 16747
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Apps in sdcard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mLastSecureContainerList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$6700(Lcom/android/server/pm/PackageManagerService;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16752
    .end local v0    # "DEBUG_SDCARD":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$27;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$27;->val$moveId:I

    const/4 v4, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$6400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_0

    .line 16738
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16722
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
