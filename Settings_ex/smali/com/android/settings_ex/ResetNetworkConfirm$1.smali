.class Lcom/android/settings_ex/ResetNetworkConfirm$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # invokes: Lcom/android/settings_ex/ResetNetworkConfirm;->isActivityValide()Z
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->show()V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # invokes: Lcom/android/settings_ex/ResetNetworkConfirm;->isActivityValide()Z
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPProgressDialog;->dismiss()V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 93
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c06b5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_2
    const-string v1, "ResetNetworkConfirm"

    const-string v2, "reset bluetooth timeout!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v1, v2}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$202(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothManager;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$1;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v1, v1, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
