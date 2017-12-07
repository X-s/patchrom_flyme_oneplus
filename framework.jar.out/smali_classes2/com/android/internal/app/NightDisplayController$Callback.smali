.class public interface abstract Lcom/android/internal/app/NightDisplayController$Callback;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NightDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 499
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .prologue
    .line 514
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 526
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 520
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 507
    return-void
.end method

.method public onModeSettingChange()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 501
    return-void
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 505
    return-void
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 504
    return-void
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 503
    return-void
.end method
