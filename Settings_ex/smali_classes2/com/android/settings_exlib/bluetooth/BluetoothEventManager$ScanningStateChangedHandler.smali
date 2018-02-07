.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
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
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
    .param p2, "started"    # Z

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean p2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 216
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 223
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 226
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 220
    return-void
.end method
