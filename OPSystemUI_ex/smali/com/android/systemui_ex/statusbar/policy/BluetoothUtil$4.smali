.class final Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$4;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$Profile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->newProfile(Landroid/bluetooth/BluetoothHeadsetClient;)Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$4;->val$client:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$4;->val$client:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil$4;->val$client:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
