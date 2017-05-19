.class public abstract Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsInterfaceListener.java"

# interfaces
.implements Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

.field static final TRANSACTION_notifyRefreshViceInfo:I = 0x7

.field static final TRANSACTION_onGetCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_onGetPacketCount:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_onUTReqFailed:I = 0x3

.field static final TRANSACTION_receiveCallDeflectResponse:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onSetCallForwardUncondTimer(I)V

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 70
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 74
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    :sswitch_3
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onUTReqFailed(ILjava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 97
    .local v10, "_arg1":J
    invoke-virtual {p0, v1, v10, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetPacketCount(IJ)V

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "_arg0":I
    .end local v10    # "_arg1":J
    :sswitch_5
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 107
    .restart local v10    # "_arg1":J
    invoke-virtual {p0, v1, v10, v11}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->onGetPacketErrorCount(IJ)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "_arg0":I
    .end local v10    # "_arg1":J
    :sswitch_6
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->receiveCallDeflectResponse(I)V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 120
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string v0, "org.codeaurora.ims.qtiims.IQtiImsInterfaceListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/codeaurora/ims/qtiims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/qtiims/QtiViceInfo;

    .line 128
    .local v1, "_arg0":Lorg/codeaurora/ims/qtiims/QtiViceInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener$Stub;->notifyRefreshViceInfo(Lorg/codeaurora/ims/qtiims/QtiViceInfo;)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg0":Lorg/codeaurora/ims/qtiims/QtiViceInfo;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lorg/codeaurora/ims/qtiims/QtiViceInfo;
    goto :goto_1

    .line 43
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
