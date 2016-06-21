.class Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 467
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 458
    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->removeMessages(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl;)Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui_ex/statusbar/policy/BluetoothControllerImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    return-void
.end method
