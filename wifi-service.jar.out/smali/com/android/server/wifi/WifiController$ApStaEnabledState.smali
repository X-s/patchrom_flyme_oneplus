.class Lcom/android/server/wifi/WifiController$ApStaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaEnabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field private mPendingState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    const/4 v1, 0x0

    .line 1013
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    .line 1015
    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 1016
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    .line 1013
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .line 1096
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get18(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1097
    const/4 v1, 0x0

    return v1

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get18(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 1100
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1101
    const-string/jumbo v5, "ms"

    .line 1100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1105
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1106
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1107
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get18(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1108
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1021
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaEnabledState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1089
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaEnabledState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1028
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+ ApStaEnabledState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1082
    :pswitch_0
    return v0

    .line 1031
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 1032
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "ApStaEnabledState:CMD_SET_AP:setHostApRunning(false)-> mApStaDisablingState"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 1084
    :cond_2
    :goto_0
    return v1

    .line 1040
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1041
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_3

    .line 1044
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 1046
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1049
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1050
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "ApStaEnabledState:CMD_WIFI_TOGGLED:set:SCAN_ONLY_WITH_WIFI_OFF_MODE"

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1051
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    .line 1057
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1053
    :cond_7
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "ApStaEnabledState:CMD_WIFI_TOGGLED:setSupplicantRunning(false)"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1054
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiStateMachine;->setOperationalMode(I)V

    .line 1055
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto :goto_2

    .line 1061
    :pswitch_3
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "ApStaEnabledState: CMD_AIRPLANE_TOGGLED-> mApStaDisablingState"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1062
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1067
    :pswitch_4
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "WifiController"

    const-string/jumbo v2, "ApStaEnabledState: CMD_STA_START_FAILURE-> mApEnabledState"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1071
    :pswitch_5
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "WifiController"

    const-string/jumbo v2, "ApStaEnabledState: CMD_AP_START_FAILURE-> mStaEnabledState"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get25(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1075
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v3, "ApStaEnabledState: CMD_RESTART_WIFI -> setHostApRunning(false) -> mApStaDisablingState"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 1076
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get21(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1077
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-set3(Lcom/android/server/wifi/WifiController;Z)Z

    .line 1078
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get6(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisablingState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
