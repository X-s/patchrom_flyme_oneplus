.class public interface abstract Lcn/oneplus/telephony/IOemTelephonyService;
.super Ljava/lang/Object;
.source "IOemTelephonyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/oneplus/telephony/IOemTelephonyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract oem_general_command(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
