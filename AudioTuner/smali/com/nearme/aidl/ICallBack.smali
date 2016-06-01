.class public interface abstract Lcom/nearme/aidl/ICallBack;
.super Ljava/lang/Object;
.source "ICallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/aidl/ICallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract myStartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
