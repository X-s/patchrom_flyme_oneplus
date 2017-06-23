.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v7, 0x0

    .line 1396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1398
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1400
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x2600c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1401
    :cond_2
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1402
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26003

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1403
    :cond_3
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1404
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1405
    .local v2, "pluggedType":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x26004

    invoke-virtual {v6, v8, v2, v7, v11}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1406
    .end local v2    # "pluggedType":I
    :cond_4
    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1407
    const-string v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1409
    .local v3, "state":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1410
    .end local v3    # "state":I
    :cond_5
    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1411
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1120025

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1412
    const-string v6, "phoneinECMState"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1413
    .local v1, "emergencyMode":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$500(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    const v9, 0x26001

    if-eqz v1, :cond_6

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    .line 1415
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1416
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_0

    .line 1417
    :cond_8
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1418
    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1420
    .local v4, "wifiApState":I
    const-string v6, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifiApState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    if-ne v4, v10, :cond_0

    .line 1431
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v11, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 1433
    .end local v4    # "wifiApState":I
    :cond_9
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1434
    const-string v6, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1445
    .local v5, "wifiState":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    .line 1446
    const-string v6, "WifiService"

    const-string v8, "Wi-Fi state is failed"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 1448
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiFactoryReset:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    goto/16 :goto_0

    .line 1451
    :cond_a
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 1452
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiFactoryReset:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1453
    const-string v6, "WifiService"

    const-string v8, "enable wifi in order to network factory reset."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->resetNetworks()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$700(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 1455
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiFactoryReset:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    goto/16 :goto_0
.end method
