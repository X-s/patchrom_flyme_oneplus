.class Lcom/android/settings_ex/ResetNetworkConfirm$2$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ResetNetworkConfirm$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ResetNetworkConfirm$2;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 110
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;

    iget-object v7, v7, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 112
    .local v2, "context":Landroid/content/Context;
    const-string v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 114
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 118
    :cond_0
    const-string v7, "wifi"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 120
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_1

    .line 121
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 124
    :cond_1
    const-string v7, "phone"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 126
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_2

    .line 127
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;

    iget-object v7, v7, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 130
    :cond_2
    const-string v7, "netpolicy"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    .line 132
    .local v3, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v3, :cond_3

    .line 133
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;

    iget-object v7, v7, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    # getter for: Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings_ex/ResetNetworkConfirm;->access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 137
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_3
    const-string v7, "bluetooth"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 139
    .local v0, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_4

    .line 140
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 142
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/ResetNetworkConfirm$2$1;->this$1:Lcom/android/settings_ex/ResetNetworkConfirm$2;

    iget-object v7, v7, Lcom/android/settings_ex/ResetNetworkConfirm$2;->this$0:Lcom/android/settings_ex/ResetNetworkConfirm;

    iget-object v7, v7, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method
