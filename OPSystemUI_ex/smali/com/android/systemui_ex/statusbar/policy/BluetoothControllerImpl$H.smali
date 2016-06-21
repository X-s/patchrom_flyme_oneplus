.class Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    .line 534
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 541
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1500(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;II)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleConnectionChange()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1600(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 549
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleUpdateBondedDevices()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1700(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 553
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1800(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 558
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mProfiles:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1800(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->handleUpdateConnectionStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1300(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$1400(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
