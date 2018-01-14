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

.field static final TRANSACTION_addThreeKeyPolicy:I = 0x16

.field static final TRANSACTION_disableDefaultThreeKey:I = 0x14

.field static final TRANSACTION_dumpLightBugreport:I = 0x2

.field static final TRANSACTION_enalbeDefaultThreeKey:I = 0x15

.field static final TRANSACTION_getPhoneHistoryRecord:I = 0x13

.field static final TRANSACTION_getThreeKeyStatus:I = 0x19

.field static final TRANSACTION_monitorSceneChanging:I = 0x3

.field static final TRANSACTION_pauseExInputEvent:I = 0x7

.field static final TRANSACTION_preEvaluateModeStatus:I = 0x4

.field static final TRANSACTION_registerInputEvent:I = 0x5

.field static final TRANSACTION_removeThreeKeyPolicy:I = 0x17

.field static final TRANSACTION_resetThreeKey:I = 0x18

.field static final TRANSACTION_resumeExInputEvent:I = 0x8

.field static final TRANSACTION_setGammaData:I = 0xf

.field static final TRANSACTION_setHomeUpLock:I = 0xe

.field static final TRANSACTION_setInteractive:I = 0xb

.field static final TRANSACTION_setKeyMode:I = 0xd

.field static final TRANSACTION_setLaserSensorCrossTalk:I = 0x11

.field static final TRANSACTION_setLaserSensorOffset:I = 0x10

.field static final TRANSACTION_setPhoneHistoryRecord:I = 0x12

.field static final TRANSACTION_setSystemProperties:I = 0xc

.field static final TRANSACTION_startApkInstall:I = 0x1

.field static final TRANSACTION_startUevent:I = 0x9

.field static final TRANSACTION_stopUevent:I = 0xa

.field static final TRANSACTION_unregisterInputEvent:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.oem.os.IOemExService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.oem.os.IOemExService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oem/os/IOemExService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oem/os/IOemExService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oem/os/IOemExService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 279
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 43
    :sswitch_0
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v15, 0x1

    return v15

    .line 48
    :sswitch_1
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->startApkInstall()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v15, 0x1

    return v15

    .line 55
    :sswitch_2
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->dumpLightBugreport(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v15, 0x1

    return v15

    .line 64
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    const/4 v7, 0x1

    .line 67
    .local v7, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oem/os/IOemExService$Stub;->monitorSceneChanging(Z)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v15, 0x1

    return v15

    .line 66
    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 73
    :sswitch_4
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 78
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/oem/os/IOemExService$Stub;->preEvaluateModeStatus(II)Z

    move-result v14

    .line 79
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v14, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v15, 0x1

    return v15

    .line 80
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 85
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_5
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 89
    .local v3, "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 90
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v14

    .line 91
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v14, :cond_2

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v15, 0x1

    return v15

    .line 92
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 97
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    .end local v8    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_6
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 100
    .restart local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v15, 0x1

    return v15

    .line 106
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    :sswitch_7
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/4 v15, 0x1

    return v15

    .line 113
    :sswitch_8
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v15, 0x1

    return v15

    .line 120
    :sswitch_9
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v9

    .line 125
    .local v9, "_arg1":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v14

    .line 126
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v14, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v15, 0x1

    return v15

    .line 127
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 132
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Lcom/oem/os/IOemUeventCallback;
    .end local v14    # "_result":Z
    :sswitch_a
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v4

    .line 135
    .local v4, "_arg0":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v14

    .line 136
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v14, :cond_4

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v15, 0x1

    return v15

    .line 137
    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    .line 142
    .end local v4    # "_arg0":Lcom/oem/os/IOemUeventCallback;
    .end local v14    # "_result":Z
    :sswitch_b
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    const/4 v7, 0x1

    .line 146
    .local v7, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 147
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v11}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v14

    .line 148
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v14, :cond_6

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v15, 0x1

    return v15

    .line 144
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v14    # "_result":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_5

    .line 149
    .restart local v10    # "_arg1":J
    .restart local v14    # "_result":Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 154
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v14    # "_result":Z
    :sswitch_c
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 160
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v14, :cond_7

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v15, 0x1

    return v15

    .line 161
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .line 166
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_d
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v14

    .line 170
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v14, :cond_8

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v15, 0x1

    return v15

    .line 171
    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    .line 176
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_e
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v14

    .line 178
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v14, :cond_9

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v15, 0x1

    return v15

    .line 179
    :cond_9
    const/4 v15, 0x0

    goto :goto_9

    .line 184
    .end local v14    # "_result":Z
    :sswitch_f
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v15, 0x1

    return v15

    .line 193
    .end local v2    # "_arg0":I
    :sswitch_10
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/4 v15, 0x1

    return v15

    .line 202
    .end local v2    # "_arg0":I
    :sswitch_11
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v15, 0x1

    return v15

    .line 211
    .end local v2    # "_arg0":I
    :sswitch_12
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 216
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/oem/os/IOemExService$Stub;->setPhoneHistoryRecord(II)I

    move-result v13

    .line 217
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v15, 0x1

    return v15

    .line 223
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_13
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->getPhoneHistoryRecord(I)I

    move-result v13

    .line 227
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v15, 0x1

    return v15

    .line 233
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_14
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v15, 0x1

    return v15

    .line 240
    :sswitch_15
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v15, 0x1

    return v15

    .line 247
    :sswitch_16
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 250
    .local v5, "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v15, 0x1

    return v15

    .line 256
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_17
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 259
    .restart local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v15, 0x1

    return v15

    .line 265
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_18
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    const/4 v15, 0x1

    return v15

    .line 272
    :sswitch_19
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v13

    .line 274
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v15, 0x1

    return v15

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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
