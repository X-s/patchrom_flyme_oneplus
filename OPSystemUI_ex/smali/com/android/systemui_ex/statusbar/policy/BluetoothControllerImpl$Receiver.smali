.class final Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/high16 v6, -0x80000000

    const/4 v7, -0x1

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 494
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V
    invoke-static {v4, v5}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;I)V

    .line 496
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 497
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$600(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 499
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    invoke-static {v5, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$700(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 500
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 502
    .local v3, "state":I
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # setter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$802(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 503
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BluetoothController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_CONNECTION_STATE_CHANGED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_2
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    if-ne v3, v4, :cond_3

    :goto_1
    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->setConnecting(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$900(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Z)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 506
    .end local v3    # "state":I
    :cond_4
    const-string v4, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 507
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    invoke-static {v4, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$700(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 508
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # setter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$802(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 509
    :cond_5
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 510
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_BOND_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_6
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->updateBondedDevices()V
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto/16 :goto_0

    .line 513
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->getProfileFromAction(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1000(Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, "profile":I
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 515
    .restart local v3    # "state":I
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "BluetoothController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_CONNECTION_STATE_CHANGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_8
    if-eq v2, v7, :cond_0

    if-eq v3, v7, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->updateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1100(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0
.end method

.method public register()V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    return-void
.end method
