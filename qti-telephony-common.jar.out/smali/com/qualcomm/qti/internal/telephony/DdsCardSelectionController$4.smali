.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;
.super Landroid/content/BroadcastReceiver;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x17

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-object v6, v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 292
    .local v3, "mode":I
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 294
    :cond_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 295
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v6, v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v6, :cond_4

    .line 298
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6, v12, v10}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    .line 304
    :cond_2
    :goto_0
    invoke-static {v12}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set2(Z)Z

    .line 286
    :cond_3
    :goto_1
    return-void

    .line 300
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get9()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 302
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6, v12, v10}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    goto :goto_0

    .line 306
    :cond_5
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get1()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get0()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 308
    :cond_6
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 309
    return-void

    .line 310
    :cond_7
    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    .line 311
    const/4 v6, 0x3

    if-ne v3, v6, :cond_9

    .line 314
    :cond_8
    :goto_2
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v6, v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v6, :cond_a

    .line 316
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6, v9, v10}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    .line 322
    :goto_3
    invoke-static {v9}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set2(Z)Z

    goto :goto_1

    .line 312
    :cond_9
    if-ne v3, v9, :cond_3

    goto :goto_2

    .line 320
    :cond_a
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6, v9, v10}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    goto :goto_3

    .line 325
    :cond_b
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 328
    const-string/jumbo v6, "availableArray"

    .line 327
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 330
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "activeArray"

    .line 329
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 331
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    .line 332
    new-instance v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v8, v9, v2, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/16 v9, 0x19

    .line 331
    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 334
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v6, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 336
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xfa0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 339
    :cond_d
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    .local v5, "stateExtra":Ljava/lang/String;
    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 344
    .local v4, "phoneId":I
    if-ne v4, v11, :cond_e

    .line 345
    return-void

    .line 346
    :cond_e
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   sim_state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 348
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x16

    invoke-virtual {v7, v8, v4, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 350
    :cond_f
    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 351
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x18

    invoke-virtual {v7, v8, v4, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 353
    :cond_10
    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 355
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v6, v4, v12, v10}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap17(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V

    .line 356
    invoke-static {v9}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-set0(Z)Z

    goto/16 :goto_1
.end method
