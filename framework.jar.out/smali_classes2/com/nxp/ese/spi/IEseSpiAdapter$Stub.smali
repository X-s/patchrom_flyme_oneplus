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

.field static final TRANSACTION_getSeInterface:I = 0x6

.field static final TRANSACTION_getSpieSEClientServicesAdapterInterface:I = 0x7

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_transceive:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/ese/spi/IEseSpiAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getState()I

    move-result v2

    .line 52
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":I
    :sswitch_2
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->enable(I)Z

    move-result v2

    .line 62
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 71
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->disable(Z)Z

    move-result v2

    .line 72
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_2
    move v0, v3

    .line 70
    goto :goto_1

    .line 78
    :sswitch_4
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->reset()Z

    move-result v2

    .line 80
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 91
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->transceive(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 92
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :sswitch_6
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getSeInterface(I)I

    move-result v2

    .line 102
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getSpieSEClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v2

    .line 110
    .local v2, "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/nxp/intf/IeSEClientServicesAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
