.class final Lcom/android/settings_ex/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/android/settings_ex/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 152
    invoke-static {}, Lcom/android/settings_ex/bluetooth/Utils;->-get0()Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/Utils;->setErrorListener(Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;)V

    .line 149
    return-void
.end method
