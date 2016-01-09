.class Lcn/oneplus/telephony/OemDataCardSelectionController$1;
.super Landroid/content/BroadcastReceiver;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;


# direct methods
.method constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const-wide/16 v10, 0x7d0

    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 258
    const-string v6, "slot"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, "slot":I
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "stateExtra":Ljava/lang/String;
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v6

    aput-boolean v7, v6, v4

    .line 262
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    .line 263
    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 265
    :cond_0
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v6

    const/4 v7, 0x1

    aput-boolean v7, v6, v4

    .line 266
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    .line 269
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->getHandleIccLoaded(I)Z
    invoke-static {v6, v4}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$200(Lcn/oneplus/telephony/OemDataCardSelectionController;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 271
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->clearHandleIccLoaded(I)V
    invoke-static {v6, v4}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$300(Lcn/oneplus/telephony/OemDataCardSelectionController;I)V

    .line 274
    :cond_1
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 277
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 278
    .local v1, "cardstates":I
    new-instance v3, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;

    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    invoke-direct {v3, v6, v1, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;ILcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;)V

    .line 279
    .local v3, "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v6, v8, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 280
    .local v2, "delay_msg":Landroid/os/Message;
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start check when card loaed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$600(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;)V

    .line 281
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v6, v2, v10, v11}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    .end local v3    # "req":Lcn/oneplus/telephony/OemDataCardSelectionController$CheckCardStableReq;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_SIM_STATE_CHANGED intent received SIM STATE is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIccLoaded["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v8}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v8

    aget-boolean v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$600(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;)V

    .line 314
    .end local v4    # "slot":I
    .end local v5    # "stateExtra":Ljava/lang/String;
    :cond_3
    return-void

    .line 285
    .restart local v4    # "slot":I
    .restart local v5    # "stateExtra":Ljava/lang/String;
    :cond_4
    const-string v6, "NOT_READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 286
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    .line 288
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 289
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 290
    .restart local v1    # "cardstates":I
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 291
    .restart local v2    # "delay_msg":Landroid/os/Message;
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v6, v2, v10, v11}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 294
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    :cond_5
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    .line 296
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$700(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->clear()V

    .line 298
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 299
    .restart local v1    # "cardstates":I
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    const/4 v7, 0x6

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 300
    .restart local v2    # "delay_msg":Landroid/os/Message;
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v6, v2, v10, v11}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 302
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    :cond_6
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 304
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    goto/16 :goto_0

    .line 306
    :cond_7
    const-string v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    iget-object v6, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v6

    sget-object v7, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v7, v6, v4

    goto/16 :goto_0
.end method
