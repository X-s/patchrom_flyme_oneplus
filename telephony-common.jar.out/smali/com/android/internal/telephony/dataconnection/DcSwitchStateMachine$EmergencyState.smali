.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 175
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isEmergency()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EmergencyState: isEmergency() is false. deferMessage msg.what=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    .line 234
    :goto_0
    return v3

    .line 183
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 227
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EmergencyState: nothandled msg.what=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    move v3, v4

    .line 230
    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string v4, "EmergencyState: ignoring EVENT_EMERGENCY_CALL_STARTED"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    if-ne v2, v5, :cond_2

    move v1, v3

    .line 196
    .local v1, "val":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmergencyState: REQ_IS_IDLE_STATE  isIdle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v5, 0x44004

    if-eqz v1, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v2, p1, v5, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .end local v1    # "val":Z
    :cond_2
    move v1, v4

    .line 195
    goto :goto_1

    .line 202
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    if-eq v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mPreEmergencyState:Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mDetachingState:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;

    move-result-object v5

    if-ne v2, v5, :cond_5

    :cond_3
    move v1, v3

    .line 205
    .restart local v1    # "val":Z
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmergencyState: REQ_IS_IDLE_OR_DETACHING_STATE  isIdleDetaching="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v5, 0x44006

    if-eqz v1, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {v2, p1, v5, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v1    # "val":Z
    :cond_5
    move v1, v4

    .line 202
    goto :goto_2

    .line 220
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EmergencyState: deferMessage msg.what=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$EmergencyState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x44000
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
