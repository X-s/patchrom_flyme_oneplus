.class public abstract Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;
.super Landroid/os/Binder;
.source "IQcrilMsgTunnel.java"

# interfaces
.implements Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

.field static final TRANSACTION_sendOemRilRequestRaw:I = 0x1

.field static final TRANSACTION_sendOemRilRequestRawAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 42
    :sswitch_0
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v7

    .line 47
    :sswitch_1
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 51
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "_arg1_length":I
    if-gez v3, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRaw([B[BI)I

    move-result v5

    .line 61
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 64
    return v7

    .line 56
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :cond_0
    new-array v2, v3, [B

    .local v2, "_arg1":[B
    goto :goto_0

    .line 68
    .end local v0    # "_arg0":[B
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg1_length":I
    :sswitch_2
    const-string/jumbo v6, "com.qualcomm.qcrilmsgtunnel.IQcrilMsgTunnel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilhook/IOemHookCallback;

    move-result-object v1

    .line 74
    .local v1, "_arg1":Lcom/qualcomm/qcrilhook/IOemHookCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v1, v4}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v7

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
