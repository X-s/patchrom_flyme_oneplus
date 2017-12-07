.class Lcom/android/server/wifi/WifiController$StaEnablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 699
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "StaEnablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 698
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 741
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "StaEnablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 707
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+ StaEnablingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 734
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 710
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_STA_START_FAILURE->mApStaDisabledState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 736
    :goto_0
    return v5

    .line 714
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_WIFI_ENABLED->mDeviceActiveState"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get10(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 718
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_WIFI_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 722
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_SET_AP defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 726
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_AIRPLANE_TOGGLED defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 730
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "StaEnablingState: CMD_RESTART_WIFI_CONTINUE defered"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 708
    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
