.class Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v0

    .line 617
    .local v0, "phoneId":I
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "MNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged received on phoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isPhoneIdFromSubIdWrong(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isCdma(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$800(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 629
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v0

    .line 662
    .local v0, "phoneId":I
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 663
    const-string v1, "MNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataActivity received on phoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isPhoneIdFromSubIdWrong(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataActivity:[I

    aput p1, v1, v0

    .line 672
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iput p1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mDataActivity:I

    .line 673
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v0

    .line 636
    .local v0, "phoneId":I
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 637
    const-string v1, "MNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged received on phoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isPhoneIdFromSubIdWrong(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :goto_0
    return-void

    .line 648
    :cond_1
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged getDefaultDataSubId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataState:[I

    aput p1, v1, v0

    .line 651
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataNetType:[I

    aput p2, v1, v0

    .line 653
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateIconSet(I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 654
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 655
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 656
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v5

    .line 581
    .local v5, "phoneId":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isPhoneIdFromSubIdWrong(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string v0, "MNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged received on phoneId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ShowPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PLMN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v0, v5

    .line 590
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # getter for: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mDefaultPhoneId:I
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$400(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    .line 591
    const-string v0, "ro.config.combined_signal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    aput v1, v0, v5

    .line 598
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 599
    const-string v0, "MNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Combining data service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimDataServiceState:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for signal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateIconSet(I)V
    invoke-static {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateDataNetType(I)V
    invoke-static {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$500(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateDataIcon(I)V
    invoke-static {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$600(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mShowSpn:[Z

    aget-boolean v1, v1, v5

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mSpn:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mShowPlmn:[Z

    aget-boolean v3, v3, v5

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v4, v4, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mPlmn:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateCarrierText(I)V
    invoke-static {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$700(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 611
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v0, v5}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto/16 :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 561
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 562
    const-string v1, "MNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged received on phoneId :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "signalStrength="

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

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->isPhoneIdFromSubIdWrong(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$100(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    :goto_1
    return-void

    .line 562
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCheatingSignalLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    aput-object p1, v0, v1

    .line 572
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateIconSet(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$200(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->updateTelephonySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->this$0:Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl$1;->mSubId:I

    # invokes: Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->getPhoneId(I)I
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->access$000(Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_1
.end method
