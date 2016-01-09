.class public interface abstract Lcom/oneplus/fingerprints/service/IFingerprintClient;
.super Ljava/lang/Object;
.source "IFingerprintClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
