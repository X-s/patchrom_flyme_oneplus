.class Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1143
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1145
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1149
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    .line 1155
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 1143
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
