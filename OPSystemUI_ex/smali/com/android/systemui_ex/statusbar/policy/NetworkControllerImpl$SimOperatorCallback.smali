.class public interface abstract Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SimOperatorCallback"
.end annotation


# virtual methods
.method public abstract onNetworkStateChangedBySlotId(ILjava/lang/String;)V
.end method

.method public abstract onSimStateChanged(Ljava/lang/String;)V
.end method

.method public abstract onSimStateChangedBySlotId(ILjava/lang/String;)V
.end method
