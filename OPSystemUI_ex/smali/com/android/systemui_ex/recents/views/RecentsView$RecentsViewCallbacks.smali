.class public interface abstract Lcom/android/systemui_ex/recents/views/RecentsView$RecentsViewCallbacks;
.super Ljava/lang/Object;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecentsViewCallbacks"
.end annotation


# virtual methods
.method public abstract onAllTaskViewsDismissed()V
.end method

.method public abstract onDismissRecentsToHome()V
.end method

.method public abstract onExitToHomeAnimationTriggered()V
.end method

.method public abstract onHasClearRecents(Z)V
.end method

.method public abstract onHasTasks()Z
.end method

.method public abstract onScreenPinningRequest()V
.end method

.method public abstract onTaskLaunchFailed()V
.end method

.method public abstract onTaskViewClicked()V
.end method
