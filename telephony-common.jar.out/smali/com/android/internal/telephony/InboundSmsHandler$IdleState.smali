.class Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "entering Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 386
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->acquireWakeLock()V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "acquired wakelock, leaving Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 396
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IdleState.processMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Idle state processing message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 398
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 427
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 402
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$300(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, v2, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->decrementWakeLock()V

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakeLock is still held after release wakelockcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakeLock released wakelockcount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget v3, v3, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
