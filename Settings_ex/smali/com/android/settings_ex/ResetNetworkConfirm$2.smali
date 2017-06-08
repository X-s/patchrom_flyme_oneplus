.class Lcom/android/settings_ex/ResetNetworkConfirm$2;
.super Landroid/content/BroadcastReceiver;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 137
    :cond_1
    :goto_1
    return-void

    .line 121
    :pswitch_0
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, "blueState":I
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 126
    :pswitch_2
    const-string v1, "ResetNetworkConfirm"

    const-string v2, "reset bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$202(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothManager;

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v1, v1, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v1, v1, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch -0x5b36f014
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 124
    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch
.end method
