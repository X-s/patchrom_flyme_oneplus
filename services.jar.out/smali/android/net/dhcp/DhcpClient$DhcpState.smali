.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 624
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 625
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 626
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initInterface()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initSockets()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1300(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 628
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    .line 633
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)V

    .line 631
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)V

    .line 638
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    .line 640
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 643
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 647
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 648
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 657
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 650
    :sswitch_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$1900(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 653
    :sswitch_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Timed out"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)V

    goto :goto_0

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_0
        0x30068 -> :sswitch_1
    .end sparse-switch
.end method
