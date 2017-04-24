.class public abstract Lcom/oem/os/IOemExService$Stub;
.super Landroid/os/Binder;
.source "IOemExService.java"

# interfaces
.implements Lcom/oem/os/IOemExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oem/os/IOemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oem/os/IOemExService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oem.os.IOemExService"

.field static final TRANSACTION_addThreeKeyPolicy:I = 0x11

.field static final TRANSACTION_disableDefaultThreeKey:I = 0xf

.field static final TRANSACTION_enalbeDefaultThreeKey:I = 0x10

.field static final TRANSACTION_getThreeKeyStatus:I = 0x14

.field static final TRANSACTION_pauseExInputEvent:I = 0x4

.field static final TRANSACTION_registerInputEvent:I = 0x2

.field static final TRANSACTION_removeThreeKeyPolicy:I = 0x12

.field static final TRANSACTION_resetThreeKey:I = 0x13

.field static final TRANSACTION_resumeExInputEvent:I = 0x5

.field static final TRANSACTION_setGammaData:I = 0xc

.field static final TRANSACTION_setHomeUpLock:I = 0xb

.field static final TRANSACTION_setInteractive:I = 0x8

.field static final TRANSACTION_setKeyMode:I = 0xa

.field static final TRANSACTION_setLaserSensorCrossTalk:I = 0xe

.field static final TRANSACTION_setLaserSensorOffset:I = 0xd

.field static final TRANSACTION_setSystemProperties:I = 0x9

.field static final TRANSACTION_startApkInstall:I = 0x1

.field static final TRANSACTION_startUevent:I = 0x6

.field static final TRANSACTION_stopUevent:I = 0x7

.field static final TRANSACTION_unregisterInputEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.oem.os.IOemExService"

    invoke-virtual {p0, p0, v0}, Lcom/oem/os/IOemExService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;
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
    const-string v1, "com.oem.os.IOemExService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oem/os/IOemExService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/oem/os/IOemExService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oem/os/IOemExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->startApkInstall()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v1

    .line 61
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v1, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    .end local v1    # "_result":Z
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v0

    .line 70
    .restart local v0    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    :sswitch_4
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_6
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v2

    .line 95
    .local v2, "_arg1":Lcom/oem/os/IOemUeventCallback;
    invoke-virtual {p0, v0, v2}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v1

    .line 96
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v2    # "_arg1":Lcom/oem/os/IOemUeventCallback;
    :sswitch_7
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Lcom/oem/os/IOemUeventCallback;
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v1

    .line 106
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "_arg0":Lcom/oem/os/IOemUeventCallback;
    .end local v1    # "_result":Z
    :sswitch_8
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 116
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 117
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v1

    .line 118
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v1, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v2    # "_arg1":J
    :cond_4
    move v0, v4

    .line 114
    goto :goto_1

    .line 124
    :sswitch_9
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 130
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v1, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v1

    .line 140
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_b
    const-string v6, "com.oem.os.IOemExService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v1

    .line 148
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v1, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v1    # "_result":Z
    :sswitch_c
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":I
    :sswitch_e
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    :sswitch_10
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    :sswitch_11
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v0

    .line 198
    .local v0, "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_12
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v0

    .line 207
    .restart local v0    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    invoke-virtual {p0, v0}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_13
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    :sswitch_14
    const-string v4, "com.oem.os.IOemExService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v1

    .line 222
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
