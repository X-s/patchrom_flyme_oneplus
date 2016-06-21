.class final Lcom/android/systemui_ex/doze/DozeLog$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/doze/DozeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 234
    invoke-static {}, Lcom/android/systemui_ex/doze/DozeLog;->traceEmergencyCall()V

    .line 235
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 239
    invoke-static {p1}, Lcom/android/systemui_ex/doze/DozeLog;->traceKeyguardBouncerChanged(Z)V

    .line 240
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 254
    invoke-static {p1}, Lcom/android/systemui_ex/doze/DozeLog;->traceKeyguard(Z)V

    .line 255
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 249
    invoke-static {p1}, Lcom/android/systemui_ex/doze/DozeLog;->traceScreenOff(I)V

    .line 250
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 244
    invoke-static {}, Lcom/android/systemui_ex/doze/DozeLog;->traceScreenOn()V

    .line 245
    return-void
.end method
