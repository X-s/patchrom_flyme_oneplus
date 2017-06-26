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
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/bluetooth/DockService$DockBluetoothCallback;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/bluetooth/DockService$DockBluetoothCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings_exlib/bluetooth/BluetoothCallback;)V

    .line 142
    # getter for: Lcom/android/settings_ex/bluetooth/Utils;->mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;
    invoke-static {}, Lcom/android/settings_ex/bluetooth/Utils;->access$000()Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/Utils;->setErrorListener(Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;)V

    .line 143
    return-void
.end method
