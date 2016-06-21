.class Lcom/android/keyguard/FingerprintUnlock$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FingerprintUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/FingerprintUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->disconnect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$000(Lcom/android/keyguard/FingerprintUnlock;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->connect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$100(Lcom/android/keyguard/FingerprintUnlock;)V

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->disconnect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$000(Lcom/android/keyguard/FingerprintUnlock;)V

    .line 80
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->connect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$100(Lcom/android/keyguard/FingerprintUnlock;)V

    .line 75
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # getter for: Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$200(Lcom/android/keyguard/FingerprintUnlock;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/FingerprintUnlock;->mIsSimLocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->access$302(Lcom/android/keyguard/FingerprintUnlock;Z)Z

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->disconnect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$000(Lcom/android/keyguard/FingerprintUnlock;)V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/FingerprintUnlock;->mIsSimLocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/FingerprintUnlock;->access$302(Lcom/android/keyguard/FingerprintUnlock;Z)Z

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock$1;->this$0:Lcom/android/keyguard/FingerprintUnlock;

    # invokes: Lcom/android/keyguard/FingerprintUnlock;->connect()V
    invoke-static {v0}, Lcom/android/keyguard/FingerprintUnlock;->access$100(Lcom/android/keyguard/FingerprintUnlock;)V

    goto :goto_0
.end method
