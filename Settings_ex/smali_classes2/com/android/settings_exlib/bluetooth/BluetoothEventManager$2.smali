.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    .line 170
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 173
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$2;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get3(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;

    .line 174
    .local v2, "handler":Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;
    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v2, p1, p2, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 168
    :cond_0
    return-void
.end method
