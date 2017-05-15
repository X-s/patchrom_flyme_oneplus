.class Lcom/android/settings_ex/deviceinfo/SimStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/SimStatus;->updatePhoneInfos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/SimStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->access$200(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/SimStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/SimStatus;->access$300(Lcom/android/settings_ex/deviceinfo/SimStatus;)V

    .line 413
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->access$400(Lcom/android/settings_ex/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V

    .line 423
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/SimStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatus;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 418
    return-void
.end method
