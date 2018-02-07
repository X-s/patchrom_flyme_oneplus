.class public interface abstract Lorg/codeaurora/wfcservice/IWFCServiceCB;
.super Ljava/lang/Object;
.source "IWFCServiceCB.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/wfcservice/IWFCServiceCB$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateWFCMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
