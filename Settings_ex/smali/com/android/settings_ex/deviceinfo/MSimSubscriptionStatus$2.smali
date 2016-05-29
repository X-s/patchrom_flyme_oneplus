.class Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # setter for: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$202(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;I)I

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$300(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$400(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 291
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->access$100(Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;)V

    .line 285
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 280
    return-void
.end method
