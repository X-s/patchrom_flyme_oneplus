.class public interface abstract Lcom/android/systemui_ex/statusbar/policy/RotationLockController;
.super Ljava/lang/Object;
.source "RotationLockController.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addRotationLockControllerCallback(Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
.end method

.method public abstract isRotationLocked()Z
.end method

.method public abstract removeRotationLockControllerCallback(Lcom/android/systemui_ex/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
.end method

.method public abstract setRotationLocked(Z)V
.end method
