.class public abstract Lorg/codeaurora/wfcservice/IWFCService$Stub;
.super Landroid/os/Binder;
.source "IWFCService.java"

# interfaces
.implements Lorg/codeaurora/wfcservice/IWFCService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/wfcservice/IWFCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/wfcservice/IWFCService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.wfcservice.IWFCService"

.field static final TRANSACTION_getWifiCallingPreference:I = 0x5

.field static final TRANSACTION_getWifiCallingStatus:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setWifiCalling:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/wfcservice/IWFCService;
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
    const-string/jumbo v1, "org.codeaurora.wfcservice.IWFCService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/wfcservice/IWFCService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/codeaurora/wfcservice/IWFCService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/codeaurora/wfcservice/IWFCService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/wfcservice/IWFCService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v5, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/wfcservice/IWFCServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/wfcservice/IWFCServiceCB;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lorg/codeaurora/wfcservice/IWFCServiceCB;
    invoke-virtual {p0, v0}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->registerCallback(Lorg/codeaurora/wfcservice/IWFCServiceCB;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v6

    .line 59
    .end local v0    # "_arg0":Lorg/codeaurora/wfcservice/IWFCServiceCB;
    :sswitch_2
    const-string/jumbo v5, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/wfcservice/IWFCServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/wfcservice/IWFCServiceCB;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lorg/codeaurora/wfcservice/IWFCServiceCB;
    invoke-virtual {p0, v0}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->unregisterCallback(Lorg/codeaurora/wfcservice/IWFCServiceCB;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v6

    .line 68
    .end local v0    # "_arg0":Lorg/codeaurora/wfcservice/IWFCServiceCB;
    :sswitch_3
    const-string/jumbo v5, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 72
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->setWifiCalling(ZI)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v6

    .line 70
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 79
    .end local v1    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v7, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->getWifiCallingStatus()Z

    move-result v4

    .line 81
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v6

    .line 87
    .end local v4    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "org.codeaurora.wfcservice.IWFCService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/codeaurora/wfcservice/IWFCService$Stub;->getWifiCallingPreference()I

    move-result v3

    .line 89
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v6

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
