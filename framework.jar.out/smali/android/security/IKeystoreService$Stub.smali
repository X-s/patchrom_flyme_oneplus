.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, Landroid/security/IKeystoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.security.IKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 599
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->getState(I)I

    move-result v10

    .line 57
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_2
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 67
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_3
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 79
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->insert(Ljava/lang/String;[BII)I

    move-result v10

    .line 83
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_4
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->del(Ljava/lang/String;I)I

    move-result v10

    .line 95
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_5
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->exist(Ljava/lang/String;I)I

    move-result v10

    .line 107
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_6
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/security/IKeystoreService$Stub;->reset()I

    move-result v10

    .line 127
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v10    # "_result":I
    :sswitch_8
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v10

    .line 139
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->lock(I)I

    move-result v10

    .line 149
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->unlock(ILjava/lang/String;)I

    move-result v10

    .line 161
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_b
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->isEmpty(I)I

    move-result v10

    .line 171
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 177
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeystoreArguments;

    .local v6, "_arg5":Landroid/security/KeystoreArguments;
    :goto_1
    move-object v0, p0

    .line 195
    invoke-virtual/range {v0 .. v6}, Landroid/security/IKeystoreService$Stub;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v10

    .line 196
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 193
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    .end local v10    # "_result":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_1

    .line 202
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_d
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 208
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->import_key(Ljava/lang/String;[BII)I

    move-result v10

    .line 212
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 223
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->sign(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 224
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 230
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":[B
    :sswitch_f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 236
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 237
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->verify(Ljava/lang/String;[B[B)I

    move-result v10

    .line 238
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":I
    :sswitch_10
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->get_pubkey(Ljava/lang/String;)[B

    move-result-object v10

    .line 248
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_11
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->grant(Ljava/lang/String;I)I

    move-result v10

    .line 260
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_12
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->ungrant(Ljava/lang/String;I)I

    move-result v10

    .line 272
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_13
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->getmtime(Ljava/lang/String;)J

    move-result-wide v10

    .line 282
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_14
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 297
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 298
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_15
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->is_hardware_backed(Ljava/lang/String;)I

    move-result v10

    .line 308
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_16
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 317
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, Landroid/security/IKeystoreService$Stub;->clear_uid(J)I

    move-result v10

    .line 318
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 324
    .end local v8    # "_arg0":J
    .end local v10    # "_result":I
    :sswitch_17
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 327
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->addRngEntropy([B)I

    move-result v10

    .line 328
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 334
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_18
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 345
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 347
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 349
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .restart local v5    # "_arg4":I
    new-instance v6, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v6}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v6, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 352
    invoke-virtual/range {v0 .. v6}, Landroid/security/IKeystoreService$Stub;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 353
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    if-eqz v6, :cond_2

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    invoke-virtual {v6, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 342
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_2

    .line 360
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_19
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterBlob;

    .line 377
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 384
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_5
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 385
    .local v4, "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 386
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    if-eqz v4, :cond_5

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_4

    .line 381
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_5

    .line 393
    .restart local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 399
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_1a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 410
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 412
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 414
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 416
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 418
    .local v6, "_arg5":I
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v7, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 419
    invoke-virtual/range {v0 .. v7}, Landroid/security/IKeystoreService$Stub;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 420
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    if-eqz v7, :cond_7

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 407
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_7

    .line 427
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":[B
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    .restart local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_1b
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 440
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 446
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 447
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/KeymasterBlob;

    .line 452
    .local v4, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :goto_a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v10

    .line 453
    .local v10, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v10, :cond_a

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 461
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_9

    .line 450
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_a

    .line 459
    .restart local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 465
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_1c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 469
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 473
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x1

    .line 475
    .local v4, "_arg3":Z
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 476
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keymaster/KeymasterArguments;

    .line 482
    .local v5, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg5":[B
    move-object v0, p0

    .line 483
    invoke-virtual/range {v0 .. v6}, Landroid/security/IKeystoreService$Stub;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 484
    .local v10, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v10, :cond_d

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 473
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "_arg5":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 479
    .restart local v4    # "_arg3":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_d

    .line 490
    .restart local v6    # "_arg5":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 496
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "_arg5":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1d
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 500
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 501
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 507
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 508
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/security/IKeystoreService$Stub;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 509
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v10, :cond_f

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_f

    .line 515
    .restart local v3    # "_arg2":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 521
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 525
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 526
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 532
    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 534
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 535
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/security/IKeystoreService$Stub;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 536
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v10, :cond_11

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 544
    :goto_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 529
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_11

    .line 542
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 548
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_1f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 551
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->abort(Landroid/os/IBinder;)I

    move-result v10

    .line 552
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 558
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":I
    :sswitch_20
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 561
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v10

    .line 562
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v10, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 563
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 568
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":Z
    :sswitch_21
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 571
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->addAuthToken([B)I

    move-result v10

    .line 572
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 578
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_22
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/security/IKeystoreService$Stub;->onUserAdded(II)I

    move-result v10

    .line 584
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 590
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_23
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 593
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/security/IKeystoreService$Stub;->onUserRemoved(I)I

    move-result v10

    .line 594
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 44
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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
