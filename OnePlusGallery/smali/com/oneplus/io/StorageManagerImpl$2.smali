.class Lcom/oneplus/io/StorageManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/io/StorageManagerImpl;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/io/StorageManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/io/StorageManagerImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$0(Lcom/oneplus/io/StorageManagerImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$4(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_BroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/oneplus/io/StorageManagerImpl;->access$5(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/io/StorageManagerImpl;->access$4(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    # getter for: Lcom/oneplus/io/StorageManagerImpl;->m_ShutterDownReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/oneplus/io/StorageManagerImpl;->access$6(Lcom/oneplus/io/StorageManagerImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$7(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$8(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$9(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)V

    .line 105
    iget-object v1, p0, Lcom/oneplus/io/StorageManagerImpl$2;->this$0:Lcom/oneplus/io/StorageManagerImpl;

    invoke-static {v1, v4}, Lcom/oneplus/io/StorageManagerImpl;->access$10(Lcom/oneplus/io/StorageManagerImpl;Landroid/content/IntentFilter;)V

    .line 107
    :cond_0
    return-void
.end method
