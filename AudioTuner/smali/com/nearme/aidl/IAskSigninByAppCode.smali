.class public interface abstract Lcom/nearme/aidl/IAskSigninByAppCode;
.super Ljava/lang/Object;
.source "IAskSigninByAppCode.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nearme/aidl/IAskSigninByAppCode$Stub;
    }
.end annotation


# virtual methods
.method public abstract reqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/aidl/UserEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
