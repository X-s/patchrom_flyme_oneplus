.class public interface abstract Lcom/oneplus/longshot/ILongScreenshotCallback;
.super Ljava/lang/Object;
.source "ILongScreenshotCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyMove()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
