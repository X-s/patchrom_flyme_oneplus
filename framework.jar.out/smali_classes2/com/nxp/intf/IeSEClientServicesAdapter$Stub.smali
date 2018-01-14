.class public abstract Lcom/nxp/intf/IeSEClientServicesAdapter$Stub;
.super Landroid/os/Binder;
.source "IeSEClientServicesAdapter.java"

# interfaces
.implements Lcom/nxp/intf/IeSEClientServicesAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/intf/IeSEClientServicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/intf/IeSEClientServicesAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.intf.IeSEClientServicesAdapter"

.field static final TRANSACTION_getJcopService:I = 0x3

.field static final TRANSACTION_getLoaderService:I = 0x2

.field static final TRANSACTION_getNxpExtrasService:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/intf/IeSEClientServicesAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/intf/IeSEClientServicesAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/intf/IeSEClientServicesAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nxp/intf/IeSEClientServicesAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nxp/intf/IeSEClientServicesAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :sswitch_0
    const-string/jumbo v3, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v4, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/nxp/intf/IeSEClientServicesAdapter$Stub;->getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;

    move-result-object v2

    .line 52
    .local v2, "_result":Lcom/nxp/intf/INxpExtrasService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/nxp/intf/INxpExtrasService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    return v5

    .line 58
    .end local v2    # "_result":Lcom/nxp/intf/INxpExtrasService;
    :sswitch_2
    const-string/jumbo v4, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/nxp/intf/IeSEClientServicesAdapter$Stub;->getLoaderService()Lcom/nxp/intf/ILoaderService;

    move-result-object v1

    .line 60
    .local v1, "_result":Lcom/nxp/intf/ILoaderService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/nxp/intf/ILoaderService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    return v5

    .line 66
    .end local v1    # "_result":Lcom/nxp/intf/ILoaderService;
    :sswitch_3
    const-string/jumbo v4, "com.nxp.intf.IeSEClientServicesAdapter"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/nxp/intf/IeSEClientServicesAdapter$Stub;->getJcopService()Lcom/nxp/intf/IJcopService;

    move-result-object v0

    .line 68
    .local v0, "_result":Lcom/nxp/intf/IJcopService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/nxp/intf/IJcopService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 70
    return v5

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
