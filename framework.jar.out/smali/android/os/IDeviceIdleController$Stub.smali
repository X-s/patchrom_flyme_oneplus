.class public abstract Landroid/os/IDeviceIdleController$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdleController.java"

# interfaces
.implements Landroid/os/IDeviceIdleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDeviceIdleController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDeviceIdleController"

.field static final TRANSACTION_addPowerSaveTempWhitelistApp:I = 0xc

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForMms:I = 0xd

.field static final TRANSACTION_addPowerSaveTempWhitelistAppForSms:I = 0xe

.field static final TRANSACTION_addPowerSaveWhitelistApp:I = 0x1

.field static final TRANSACTION_exitIdle:I = 0xf

.field static final TRANSACTION_getAppIdTempWhitelist:I = 0x9

.field static final TRANSACTION_getAppIdWhitelist:I = 0x8

.field static final TRANSACTION_getAppIdWhitelistExceptIdle:I = 0x7

.field static final TRANSACTION_getFullPowerWhitelist:I = 0x6

.field static final TRANSACTION_getFullPowerWhitelistExceptIdle:I = 0x5

.field static final TRANSACTION_getIdleStateDetailed:I = 0x10

.field static final TRANSACTION_getSystemPowerWhitelist:I = 0x4

.field static final TRANSACTION_getSystemPowerWhitelistExceptIdle:I = 0x3

.field static final TRANSACTION_isPowerSaveWhitelistApp:I = 0xb

.field static final TRANSACTION_isPowerSaveWhitelistExceptIdleApp:I = 0xa

.field static final TRANSACTION_removePowerSaveWhitelistApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDeviceIdleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;
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
    const-string v1, "android.os.IDeviceIdleController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IDeviceIdleController;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IDeviceIdleController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDeviceIdleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v6

    .line 76
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v6

    .line 92
    .restart local v6    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelistExceptIdle()[I

    move-result-object v6

    .line 100
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 106
    .end local v6    # "_result":[I
    :sswitch_8
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdWhitelist()[I

    move-result-object v6

    .line 108
    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 114
    .end local v6    # "_result":[I
    :sswitch_9
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getAppIdTempWhitelist()[I

    move-result-object v6

    .line 116
    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 122
    .end local v6    # "_result":[I
    :sswitch_a
    const-string v9, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result v6

    .line 126
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v6, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v9, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v6

    .line 136
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v6, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg3":Ljava/lang/String;
    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 157
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    .line 165
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_e
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v4}, Landroid/os/IDeviceIdleController$Stub;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v6

    .line 179
    .restart local v6    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_f
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/IDeviceIdleController$Stub;->exitIdle(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 194
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v0, "android.os.IDeviceIdleController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/os/IDeviceIdleController$Stub;->getIdleStateDetailed()I

    move-result v6

    .line 196
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
