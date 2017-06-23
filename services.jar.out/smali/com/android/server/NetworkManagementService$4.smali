.class Lcom/android/server/NetworkManagementService$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    .prologue
    .line 2587
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 2590
    const/4 v1, 0x0

    .line 2591
    .local v1, "isBlockAllData":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.codeaurora.restrictData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2593
    const-string v2, "Restrict"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2594
    const-string v2, "ZeroBalance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent value to block unblock data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagement"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2609
    :goto_0
    return-void

    .line 2602
    :cond_1
    :try_start_0
    const-string v2, "ZeroBalance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before calling connector Intentvalue to block unblock data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$4;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "bandwidth"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    const-string v2, "blockAllData"

    :goto_1
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 2604
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    :try_start_1
    const-string v2, "unblockAllData"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
