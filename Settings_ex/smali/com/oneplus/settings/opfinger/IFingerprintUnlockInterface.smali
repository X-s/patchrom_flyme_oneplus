.class public interface abstract Lcom/oneplus/settings/opfinger/IFingerprintUnlockInterface;
.super Ljava/lang/Object;
.source "IFingerprintUnlockInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/IFingerprintUnlockInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/oneplus/settings/opfinger/IFingerprintUnlockCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startUi(Landroid/os/IBinder;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopUi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/oneplus/settings/opfinger/IFingerprintUnlockCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
