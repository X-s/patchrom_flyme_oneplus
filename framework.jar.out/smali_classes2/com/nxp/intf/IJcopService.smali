.class public interface abstract Lcom/nxp/intf/IJcopService;
.super Ljava/lang/Object;
.source "IJcopService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/intf/IJcopService$Stub;
    }
.end annotation


# virtual methods
.method public abstract jcopOsDownload(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
