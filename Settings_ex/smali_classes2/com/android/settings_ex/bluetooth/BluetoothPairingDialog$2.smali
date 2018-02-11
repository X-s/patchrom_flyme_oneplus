.class Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;
.super Landroid/os/Handler;
.source "BluetoothPairingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 508
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 507
    :goto_0
    return-void

    .line 510
    :pswitch_0
    const-string/jumbo v0, "BluetoothPairingDialog"

    const-string/jumbo v1, "Delayed pairing pop up handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
