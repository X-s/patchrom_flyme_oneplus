.class public interface abstract Lcom/oem/os/IOemExInputCallBack;
.super Ljava/lang/Object;
.source "IOemExInputCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IOemExInputCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInputEvent(Landroid/view/InputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
