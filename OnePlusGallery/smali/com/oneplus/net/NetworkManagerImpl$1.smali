.class Lcom/oneplus/net/NetworkManagerImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/net/NetworkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/net/NetworkManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/net/NetworkManagerImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    .line 28
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/net/NetworkManagerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    # invokes: Lcom/oneplus/net/NetworkManagerImpl;->onNetworkAvailable(Landroid/net/Network;)V
    invoke-static {v0, p1}, Lcom/oneplus/net/NetworkManagerImpl;->access$0(Lcom/oneplus/net/NetworkManagerImpl;Landroid/net/Network;)V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    const/16 v1, 0x2710

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/net/NetworkManagerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    # invokes: Lcom/oneplus/net/NetworkManagerImpl;->onNetworkLost(Landroid/net/Network;)V
    invoke-static {v0, p1}, Lcom/oneplus/net/NetworkManagerImpl;->access$1(Lcom/oneplus/net/NetworkManagerImpl;Landroid/net/Network;)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/oneplus/net/NetworkManagerImpl$1;->this$0:Lcom/oneplus/net/NetworkManagerImpl;

    const/16 v1, 0x2711

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method
