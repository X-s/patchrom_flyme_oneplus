.class Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 729
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    .line 751
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 753
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput p1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataState:I

    .line 738
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput p2, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataNetType:I

    .line 739
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 742
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 743
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 700
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    iput v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 712
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$300(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$400(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 715
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 717
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    iput-object p1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 688
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateIconSet()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;->this$0:Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 691
    return-void
.end method
