.class Lcom/android/server/wifi/WifiController$StaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 478
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 482
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 523
    const/4 v0, 0x0

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 484
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->doDeferEnable(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$2800(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 500
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 502
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->doDeferEnable(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 509
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_4

    .line 510
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 514
    :cond_4
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 519
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_2
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_1
        0x2600a -> :sswitch_3
    .end sparse-switch
.end method
