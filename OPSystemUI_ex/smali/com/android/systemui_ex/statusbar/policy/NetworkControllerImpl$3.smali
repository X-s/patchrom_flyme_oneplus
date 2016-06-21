.class Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 708
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 716
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 734
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 735
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 738
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 739
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 740
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 720
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 721
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 725
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iput p2, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 726
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 728
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 730
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 682
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PLMN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 687
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    iput v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 694
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 695
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget v2, v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 700
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 701
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 702
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 704
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 669
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 670
    const-string v1, "NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 674
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 675
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 676
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 677
    return-void

    .line 670
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
