.class public abstract Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Lcom/oneplus/fingerprints/service/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/fingerprints/service/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/fingerprints/service/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.fingerprints.service.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x7

.field static final TRANSACTION_enrollContinue:I = 0x3

.field static final TRANSACTION_enrollPause:I = 0x4

.field static final TRANSACTION_getIdName:I = 0xf

.field static final TRANSACTION_getIds:I = 0x9

.field static final TRANSACTION_identifyContinue:I = 0xa

.field static final TRANSACTION_identifyPause:I = 0xb

.field static final TRANSACTION_navigateContinue:I = 0xd

.field static final TRANSACTION_navigatePause:I = 0xe

.field static final TRANSACTION_notifyScreenOff:I = 0x16

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_release:I = 0x8

.field static final TRANSACTION_removeData:I = 0x6

.field static final TRANSACTION_removeFingerIdentifyListner:I = 0x15

.field static final TRANSACTION_selfTest:I = 0x12

.field static final TRANSACTION_setFingerIdentifyListner:I = 0x14

.field static final TRANSACTION_startEnrol:I = 0x2

.field static final TRANSACTION_startFpManager:I = 0x10

.field static final TRANSACTION_startIdentify:I = 0x5

.field static final TRANSACTION_startImageQualityTest:I = 0x13

.field static final TRANSACTION_startNavigate:I = 0xc

.field static final TRANSACTION_upateTA:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/fingerprints/service/IFingerprintService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oneplus/fingerprints/service/IFingerprintService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->open(Lcom/oneplus/fingerprints/service/IFingerprintClient;)I

    move-result v4

    .line 52
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->startEnrol(Lcom/oneplus/fingerprints/service/IFingerprintClient;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->enrollContinue()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->enrollPause()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 87
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 89
    .local v1, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->startIdentify(Lcom/oneplus/fingerprints/service/IFingerprintClient;[III)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_6
    const-string v7, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->removeData(Lcom/oneplus/fingerprints/service/IFingerprintClient;I)Z

    move-result v4

    .line 104
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->cancel(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_8
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->release(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 128
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_9
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 131
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->getIds(Lcom/oneplus/fingerprints/service/IFingerprintClient;)[I

    move-result-object v4

    .line 132
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v4    # "_result":[I
    :sswitch_a
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->identifyContinue()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    :sswitch_b
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->identifyPause()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    :sswitch_c
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->startNavigate(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_d
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->navigateContinue()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    :sswitch_e
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->navigatePause()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_f
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 179
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 180
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->getIdName(Lcom/oneplus/fingerprints/service/IFingerprintClient;I)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 190
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->startFpManager(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_11
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->upateTA(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 202
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_12
    const-string v7, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 211
    .local v0, "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->selfTest(Lcom/oneplus/fingerprints/service/IFingerprintClient;)Z

    move-result v4

    .line 212
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 222
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v6

    .line 223
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->startImageQualityTest(Lcom/oneplus/fingerprints/service/IFingerprintClient;Z)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_2
    move v1, v5

    .line 222
    goto :goto_1

    .line 229
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_14
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 232
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->setFingerIdentifyListner(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_15
    const-string v5, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 241
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p0, v0}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->removeFingerIdentifyListner(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 247
    .end local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    :sswitch_16
    const-string v7, "com.oneplus.fingerprints.service.IFingerprintService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/fingerprints/service/IFingerprintClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintClient;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Lcom/oneplus/fingerprints/service/IFingerprintClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    .line 252
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->notifyScreenOff(Lcom/oneplus/fingerprints/service/IFingerprintClient;Z)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_3
    move v1, v5

    .line 251
    goto :goto_2

    .line 39
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
