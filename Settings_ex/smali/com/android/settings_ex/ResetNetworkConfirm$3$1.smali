.class Lcom/android/settings_ex/ResetNetworkConfirm$3$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ResetNetworkConfirm$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm$3;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 158
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 160
    .local v1, "context":Landroid/content/Context;
    const-string v6, "connectivity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 166
    :cond_0
    const-string v6, "wifi"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 168
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 172
    :cond_1
    const-string v6, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 174
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_2

    .line 175
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$300(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 178
    :cond_2
    const-string v6, "netpolicy"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    .line 180
    .local v2, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v2, :cond_3

    .line 181
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$300(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 186
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v7, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    const-string v6, "bluetooth"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    # setter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v7, v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$202(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothManager;

    .line 188
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 189
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    const-string v6, "ResetNetworkConfirm"

    const-string v7, "bluetooth in on state!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 192
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_4
    const-string v6, "ResetNetworkConfirm"

    const-string v7, "bluetooth in off state!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;
    invoke-static {v6}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 197
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 200
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/ResetNetworkConfirm$3$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$3;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm$3;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v6, v6, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
