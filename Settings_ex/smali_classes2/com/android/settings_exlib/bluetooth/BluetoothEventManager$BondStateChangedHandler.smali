.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .prologue
    .line 354
    packed-switch p3, :pswitch_data_0

    .line 371
    :pswitch_0
    const-string/jumbo v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 356
    :pswitch_1
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_pairing_pin_error_message:I

    .line 374
    .local v0, "errorMsg":I
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/android/settings_exlib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 351
    return-void

    .line 359
    .end local v0    # "errorMsg":I
    :pswitch_2
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_pairing_rejected_error_message:I

    .restart local v0    # "errorMsg":I
    goto :goto_0

    .line 362
    .end local v0    # "errorMsg":I
    :pswitch_3
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_pairing_device_down_error_message:I

    .restart local v0    # "errorMsg":I
    goto :goto_0

    .line 368
    .end local v0    # "errorMsg":I
    :pswitch_4
    sget v0, Lcom/android/settings_exlib/R$string;->bluetooth_pairing_error_message:I

    .restart local v0    # "errorMsg":I
    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/high16 v8, -0x80000000

    .line 307
    if-nez p3, :cond_0

    .line 308
    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void

    .line 311
    :cond_0
    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, "bondState":I
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 314
    .local v1, "cachedDevice":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 315
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 316
    const-string/jumbo v7, " not found, calling readPairedDevices()."

    .line 315
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_1

    .line 318
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 319
    const-string/jumbo v7, ", but we have no record of that device."

    .line 318
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_1
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 323
    if-nez v1, :cond_2

    .line 324
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 325
    const-string/jumbo v7, ", but device not added in cache."

    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 330
    :cond_2
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 331
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 332
    .local v2, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 330
    .end local v2    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "callback$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v6

    .line 335
    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 337
    const/16 v5, 0xa

    if-ne v0, v5, :cond_4

    .line 338
    const-string/jumbo v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 341
    .local v4, "reason":I
    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 306
    .end local v4    # "reason":I
    :cond_4
    return-void
.end method
