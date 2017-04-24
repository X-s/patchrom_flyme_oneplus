.class public interface abstract Lcom/nxp/intf/IeSEClientServicesAdapter;
.super Ljava/lang/Object;
.source "IeSEClientServicesAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/intf/IeSEClientServicesAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract getJcopService()Lcom/nxp/intf/IJcopService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLoaderService()Lcom/nxp/intf/ILoaderService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
