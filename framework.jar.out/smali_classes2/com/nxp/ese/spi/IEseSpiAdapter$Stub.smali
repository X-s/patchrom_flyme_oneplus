.class public abstract Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;
.super Landroid/os/Binder;
.source "IEseSpiAdapter.java"

# interfaces
.implements Lcom/nxp/ese/spi/IEseSpiAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/ese/spi/IEseSpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.ese.spi.IEseSpiAdapter"

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_getSeInterface:I = 0x7

.field static final TRANSACTION_getSpieSEClientServicesAdapterInterface:I = 0x8

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_interfaceReset:I = 0x5

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_transceive:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/ese/spi/IEseSpiAdapter;
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
    const-string/jumbo v1, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 45
    :sswitch_0
    const-string/jumbo v8, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v8, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getState()I

    move-result v4

    .line 52
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v9

    .line 58
    .end local v4    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->enable(I)Z

    move-result v6

    .line 62
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v6, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v9

    .line 68
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_3
    const-string/jumbo v10, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v2, v9

    .line 71
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->disable(Z)Z

    move-result v6

    .line 72
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v6, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v9

    .end local v2    # "_arg0":Z
    .end local v6    # "_result":Z
    :cond_2
    move v2, v8

    .line 70
    goto :goto_0

    .line 78
    :sswitch_4
    const-string/jumbo v10, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->reset()Z

    move-result v6

    .line 80
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v9

    .line 86
    .end local v6    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->interfaceReset()Z

    move-result v6

    .line 88
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v9

    .line 94
    .end local v6    # "_result":Z
    :sswitch_6
    const-string/jumbo v8, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 99
    .local v3, "_arg1":[B
    invoke-virtual {p0, v1, v3}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->transceive(Ljava/lang/String;[B)[B

    move-result-object v7

    .line 100
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 102
    return v9

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v7    # "_result":[B
    :sswitch_7
    const-string/jumbo v8, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getSeInterface(I)I

    move-result v4

    .line 110
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v9

    .line 116
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_8
    const-string/jumbo v8, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getSpieSEClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v5

    .line 118
    .local v5, "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/nxp/intf/IeSEClientServicesAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    return v9

    :cond_5
    move-object v8, v10

    .line 119
    goto :goto_1

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
