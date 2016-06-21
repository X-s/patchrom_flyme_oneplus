.class public interface abstract Lcom/android/systemui_ex/VerticalSwipeHelper$Callback;
.super Ljava/lang/Object;
.source "VerticalSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/VerticalSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract isDraggingNotificationCenter()Z
.end method

.method public abstract isReachingStackHeadToEnableSingleHandNotification()Z
.end method

.method public abstract onSingleHandDisabled()V
.end method

.method public abstract onSingleHandEnabled()V
.end method
