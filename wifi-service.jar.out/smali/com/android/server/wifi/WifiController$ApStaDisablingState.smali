.class Lcom/android/server/wifi/WifiController$ApStaDisablingState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisablingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 957
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1007
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState exit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 964
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+ ApStaDisablingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2, p1}, Lcom/android/server/wifi/WifiController;->-wrap2(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1000
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 967
    :pswitch_1
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState defer CMD_SET_AP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 1002
    :goto_0
    return v5

    .line 971
    :pswitch_2
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState defer CMD_WIFI_TOGGLED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 975
    :pswitch_3
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState defer CMD_AIRPLANE_TOGGLED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 979
    :pswitch_4
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState CMD_WIFI_ENABLED ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :pswitch_5
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState: CMD_WIFI_DISABLED-> mApEnabledState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 986
    :pswitch_6
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState CMD_AP_STARTED ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :pswitch_7
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaDisablingState: CMD_AP_STOPPED->StaEnabledState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get25(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap11(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 993
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState: CMD_STA_START_FAILURE dropped"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0

    .line 996
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v1, "ApStaDisablingState defer CMD_RESTART_WIFI"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap5(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisablingState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->-wrap4(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    goto :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
