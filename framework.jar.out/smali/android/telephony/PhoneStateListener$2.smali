.class Landroid/telephony/PhoneStateListener$2;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 5
    .param p1, "cfi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 557
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void

    :cond_0
    move v0, v1

    .line 557
    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 577
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 578
    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/4 v3, 0x0

    .line 626
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 627
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 563
    invoke-static {}, Landroid/util/OpFeatures;->isSupportedCTAPermissionControl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 565
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/Permission;

    invoke-direct {v2, v0}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    .line 566
    .local v2, "requester":Landroid/util/Permission;
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v4}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v3

    .line 567
    .local v3, "result":Z
    if-nez v3, :cond_0

    .line 574
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "requester":Landroid/util/Permission;
    .end local v3    # "result":Z
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 573
    .local v1, "location":Landroid/telephony/CellLocation;
    iget-object v4, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5, v6, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 586
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 3
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 615
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 581
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 583
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 5
    .param p1, "mwi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 554
    return-void

    :cond_0
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public onOemHookRawEvent([B)V
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x8000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .param p1, "otaspMode"    # I

    .prologue
    .line 594
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 595
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 3
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    const/4 v2, 0x0

    .line 602
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 3
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 609
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 545
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 4
    .param p1, "asu"    # I

    .prologue
    .line 548
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 549
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 3
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$2;->this$0:Landroid/telephony/PhoneStateListener;

    # getter for: Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 619
    return-void
.end method
