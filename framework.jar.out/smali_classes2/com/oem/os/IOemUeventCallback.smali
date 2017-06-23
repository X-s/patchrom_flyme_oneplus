.class public interface abstract Lcom/oem/os/IOemUeventCallback;
.super Ljava/lang/Object;
.source "IOemUeventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IOemUeventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInputEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
