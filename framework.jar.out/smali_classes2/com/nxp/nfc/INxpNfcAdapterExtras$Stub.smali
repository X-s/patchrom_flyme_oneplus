.class public abstract Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapterExtras.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapterExtras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapterExtras"

.field static final TRANSACTION_closeuicc:I = 0xb

.field static final TRANSACTION_deliverSeIntent:I = 0x7

.field static final TRANSACTION_doGetRouting:I = 0x5

.field static final TRANSACTION_getAtr:I = 0x4

.field static final TRANSACTION_getSecureElementTechList:I = 0x1

.field static final TRANSACTION_getSecureElementUid:I = 0x2

.field static final TRANSACTION_getSelectedUicc:I = 0x9

.field static final TRANSACTION_notifyCheckCertResult:I = 0x6

.field static final TRANSACTION_openuicc:I = 0xa

.field static final TRANSACTION_reset:I = 0x3

.field static final TRANSACTION_selectUicc:I = 0x8

.field static final TRANSACTION_transceiveuicc:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapterExtras;
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
    const-string/jumbo v1, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapterExtras;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapterExtras;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getSecureElementTechList(Ljava/lang/String;)I

    move-result v6

    .line 54
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v10, 0x1

    return v10

    .line 60
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getSecureElementUid(Ljava/lang/String;)[B

    move-result-object v9

    .line 64
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    const/4 v10, 0x1

    return v10

    .line 70
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":[B
    :sswitch_3
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->reset(Ljava/lang/String;)Z

    move-result v8

    .line 74
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v8, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v10, 0x1

    return v10

    .line 75
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getAtr(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 84
    .local v7, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v7, :cond_1

    .line 86
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 90
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 96
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->doGetRouting()[B

    move-result-object v9

    .line 98
    .restart local v9    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    const/4 v10, 0x1

    return v10

    .line 104
    .end local v9    # "_result":[B
    :sswitch_6
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    .line 109
    .local v4, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->notifyCheckCertResult(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v10, 0x1

    return v10

    .line 108
    .end local v4    # "_arg1":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 125
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->deliverSeIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v10, 0x1

    return v10

    .line 123
    :cond_3
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/content/Intent;
    goto :goto_3

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_8
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->selectUicc(I)I

    move-result v6

    .line 135
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v10, 0x1

    return v10

    .line 141
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_9
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->getSelectedUicc()I

    move-result v6

    .line 143
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v10, 0x1

    return v10

    .line 149
    .end local v6    # "_result":I
    :sswitch_a
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 154
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->openuicc(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v7

    .line 155
    .restart local v7    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v7, :cond_4

    .line 157
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    :goto_4
    const/4 v10, 0x1

    return v10

    .line 161
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 172
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->closeuicc(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v7

    .line 173
    .restart local v7    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v7, :cond_5

    .line 175
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    :goto_5
    const/4 v10, 0x1

    return v10

    .line 179
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v10, "com.nxp.nfc.INxpNfcAdapterExtras"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 190
    .local v5, "_arg1":[B
    invoke-virtual {p0, v1, v5}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;->transceiveuicc(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v7

    .line 191
    .restart local v7    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v7, :cond_6

    .line 193
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_6
    const/4 v10, 0x1

    return v10

    .line 197
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
