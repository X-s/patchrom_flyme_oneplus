.class public abstract Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapter.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapter"

.field static final TRANSACTION_DefaultRouteSet:I = 0xd

.field static final TRANSACTION_MifareCLTRouteSet:I = 0xe

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0xc

.field static final TRANSACTION_deselectSecureElement:I = 0x9

.field static final TRANSACTION_getActiveSecureElementList:I = 0x15

.field static final TRANSACTION_getCommittedAidRoutingTableSize:I = 0x14

.field static final TRANSACTION_getFWVersion:I = 0x11

.field static final TRANSACTION_getMaxAidRoutingTableSize:I = 0x13

.field static final TRANSACTION_getNfcDtaInterface:I = 0x1

.field static final TRANSACTION_getNfcEseClientServicesAdapterInterface:I = 0xf

.field static final TRANSACTION_getNfcVzwInterface:I = 0x3

.field static final TRANSACTION_getNxpNfcAccessExtrasInterface:I = 0x2

.field static final TRANSACTION_getNxpNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNxpNfcControllerInterface:I = 0x5

.field static final TRANSACTION_getSeInterface:I = 0x10

.field static final TRANSACTION_getSecureElementList:I = 0x6

.field static final TRANSACTION_getSelectedSecureElement:I = 0x7

.field static final TRANSACTION_getServicesAidCacheSize:I = 0x12

.field static final TRANSACTION_selectSecureElement:I = 0x8

.field static final TRANSACTION_setConfig:I = 0x17

.field static final TRANSACTION_setEmvCoPollProfile:I = 0xb

.field static final TRANSACTION_storeSePreference:I = 0xa

.field static final TRANSACTION_updateServiceState:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapter;
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
    const-string/jumbo v1, "com.nxp.nfc.INxpNfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 288
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 45
    :sswitch_0
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v22, 0x1

    return v22

    .line 50
    :sswitch_1
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v13

    .line 52
    .local v13, "_result":Lcom/nxp/nfc/INfcDta;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v13, :cond_0

    invoke-interface {v13}, Lcom/nxp/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 54
    const/16 v22, 0x1

    return v22

    .line 53
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 58
    .end local v13    # "_result":Lcom/nxp/nfc/INfcDta;
    :sswitch_2
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INxpNfcAccessExtras;

    move-result-object v15

    .line 62
    .local v15, "_result":Lcom/nxp/nfc/INxpNfcAccessExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lcom/nxp/nfc/INxpNfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 64
    const/16 v22, 0x1

    return v22

    .line 63
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 68
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Lcom/nxp/nfc/INxpNfcAccessExtras;
    :sswitch_3
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v14

    .line 70
    .local v14, "_result":Lcom/nxp/nfc/INfcVzw;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v14, :cond_2

    invoke-interface {v14}, Lcom/nxp/nfc/INfcVzw;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_2
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    const/16 v22, 0x1

    return v22

    .line 71
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 76
    .end local v14    # "_result":Lcom/nxp/nfc/INfcVzw;
    :sswitch_4
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;

    move-result-object v16

    .line 78
    .local v16, "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Lcom/nxp/nfc/INxpNfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_3
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    const/16 v22, 0x1

    return v22

    .line 79
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    .line 84
    .end local v16    # "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    :sswitch_5
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v17

    .line 86
    .local v17, "_result":Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/16 v22, 0x1

    return v22

    .line 87
    :cond_4
    const/16 v22, 0x0

    goto :goto_4

    .line 92
    .end local v17    # "_result":Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    :sswitch_6
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v20

    .line 96
    .local v20, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 98
    const/16 v22, 0x1

    return v22

    .line 102
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":[I
    :sswitch_7
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v11

    .line 106
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/16 v22, 0x1

    return v22

    .line 112
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_8
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->selectSecureElement(Ljava/lang/String;I)I

    move-result v11

    .line 118
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/16 v22, 0x1

    return v22

    .line 124
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v11    # "_result":I
    :sswitch_9
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->deselectSecureElement(Ljava/lang/String;)I

    move-result v11

    .line 128
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/16 v22, 0x1

    return v22

    .line 134
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":I
    :sswitch_a
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->storeSePreference(I)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/16 v22, 0x1

    return v22

    .line 143
    .end local v2    # "_arg0":I
    :sswitch_b
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_5

    const/4 v4, 0x1

    .line 147
    .local v4, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 148
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->setEmvCoPollProfile(ZI)I

    move-result v11

    .line 149
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/16 v22, 0x1

    return v22

    .line 145
    .end local v4    # "_arg0":Z
    .end local v5    # "_arg1":I
    .end local v11    # "_result":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_5

    .line 155
    .end local v4    # "_arg0":Z
    :sswitch_c
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_6

    const/4 v8, 0x1

    .line 161
    .local v8, "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_7

    const/4 v9, 0x1

    .line 163
    .local v9, "_arg2":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_8

    const/4 v10, 0x1

    .line 164
    .local v10, "_arg3":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareDesfireRouteSet(IZZZ)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/16 v22, 0x1

    return v22

    .line 159
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_6

    .line 161
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_7

    .line 163
    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    .line 170
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    :sswitch_d
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_9

    const/4 v8, 0x1

    .line 176
    .restart local v8    # "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    const/4 v9, 0x1

    .line 178
    .restart local v9    # "_arg2":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    const/4 v10, 0x1

    .line 179
    .restart local v10    # "_arg3":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->DefaultRouteSet(IZZZ)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/16 v22, 0x1

    return v22

    .line 174
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Z
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_9

    .line 176
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_a

    .line 178
    :cond_b
    const/4 v10, 0x0

    goto :goto_b

    .line 185
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    :sswitch_e
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_c

    const/4 v8, 0x1

    .line 191
    .restart local v8    # "_arg1":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    const/4 v9, 0x1

    .line 193
    .restart local v9    # "_arg2":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    const/4 v10, 0x1

    .line 194
    .restart local v10    # "_arg3":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareCLTRouteSet(IZZZ)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/16 v22, 0x1

    return v22

    .line 189
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":Z
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_c

    .line 191
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Z
    goto :goto_d

    .line 193
    :cond_e
    const/4 v10, 0x0

    goto :goto_e

    .line 200
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    :sswitch_f
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v12

    .line 202
    .local v12, "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v12, :cond_f

    invoke-interface {v12}, Lcom/nxp/intf/IeSEClientServicesAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_f
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 204
    const/16 v22, 0x1

    return v22

    .line 203
    :cond_f
    const/16 v22, 0x0

    goto :goto_f

    .line 208
    .end local v12    # "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    :sswitch_10
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSeInterface(I)I

    move-result v11

    .line 212
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/16 v22, 0x1

    return v22

    .line 218
    .end local v2    # "_arg0":I
    .end local v11    # "_result":I
    :sswitch_11
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getFWVersion()[B

    move-result-object v19

    .line 220
    .local v19, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 222
    const/16 v22, 0x1

    return v22

    .line 226
    .end local v19    # "_result":[B
    :sswitch_12
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v18

    .line 232
    .local v18, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 234
    const/16 v22, 0x1

    return v22

    .line 238
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/util/Map;
    :sswitch_13
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getMaxAidRoutingTableSize()I

    move-result v11

    .line 240
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/16 v22, 0x1

    return v22

    .line 246
    .end local v11    # "_result":I
    :sswitch_14
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getCommittedAidRoutingTableSize()I

    move-result v11

    .line 248
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/16 v22, 0x1

    return v22

    .line 254
    .end local v11    # "_result":I
    :sswitch_15
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getActiveSecureElementList(Ljava/lang/String;)[I

    move-result-object v20

    .line 258
    .restart local v20    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 260
    const/16 v22, 0x1

    return v22

    .line 264
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":[I
    :sswitch_16
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    .line 269
    .local v21, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 270
    .local v7, "_arg1":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->updateServiceState(ILjava/util/Map;)I

    move-result v11

    .line 271
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/16 v22, 0x1

    return v22

    .line 277
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":Ljava/util/Map;
    .end local v11    # "_result":I
    .end local v21    # "cl":Ljava/lang/ClassLoader;
    :sswitch_17
    const-string/jumbo v22, "com.nxp.nfc.INxpNfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 283
    .restart local v11    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/16 v22, 0x1

    return v22

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
        0x17 -> :sswitch_17
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
