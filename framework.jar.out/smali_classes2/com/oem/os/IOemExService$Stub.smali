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

.field static final TRANSACTION_addThreeKeyPolicy:I = 0x15

.field static final TRANSACTION_disableDefaultThreeKey:I = 0x13

.field static final TRANSACTION_enalbeDefaultThreeKey:I = 0x14

.field static final TRANSACTION_getPhoneHistoryRecord:I = 0x12

.field static final TRANSACTION_getThreeKeyStatus:I = 0x18

.field static final TRANSACTION_monitorSceneChanging:I = 0x2

.field static final TRANSACTION_pauseExInputEvent:I = 0x6

.field static final TRANSACTION_preEvaluateModeStatus:I = 0x3

.field static final TRANSACTION_registerInputEvent:I = 0x4

.field static final TRANSACTION_removeThreeKeyPolicy:I = 0x16

.field static final TRANSACTION_resetThreeKey:I = 0x17

.field static final TRANSACTION_resumeExInputEvent:I = 0x7

.field static final TRANSACTION_setGammaData:I = 0xe

.field static final TRANSACTION_setHomeUpLock:I = 0xd

.field static final TRANSACTION_setInteractive:I = 0xa

.field static final TRANSACTION_setKeyMode:I = 0xc

.field static final TRANSACTION_setLaserSensorCrossTalk:I = 0x10

.field static final TRANSACTION_setLaserSensorOffset:I = 0xf

.field static final TRANSACTION_setPhoneHistoryRecord:I = 0x11

.field static final TRANSACTION_setSystemProperties:I = 0xb

.field static final TRANSACTION_startApkInstall:I = 0x1

.field static final TRANSACTION_startUevent:I = 0x8

.field static final TRANSACTION_stopUevent:I = 0x9

.field static final TRANSACTION_unregisterInputEvent:I = 0x5


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

    .line 272
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

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/oem/os/IOemExService$Stub;->startApkInstall(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v15, 0x1

    return v15

    .line 57
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    const/4 v7, 0x1

    .line 60
    .local v7, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oem/os/IOemExService$Stub;->monitorSceneChanging(Z)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v15, 0x1

    return v15

    .line 59
    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 66
    :sswitch_3
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 71
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/oem/os/IOemExService$Stub;->preEvaluateModeStatus(II)Z

    move-result v14

    .line 72
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v14, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v15, 0x1

    return v15

    .line 73
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 78
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_4
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 82
    .local v3, "_arg0":Lcom/oem/os/IOemExInputCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 83
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/oem/os/IOemExService$Stub;->registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z

    move-result v14

    .line 84
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v14, :cond_2

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v15, 0x1

    return v15

    .line 85
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 90
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    .end local v8    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_5
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemExInputCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    .line 93
    .restart local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/oem/os/IOemExService$Stub;->unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v15, 0x1

    return v15

    .line 99
    .end local v3    # "_arg0":Lcom/oem/os/IOemExInputCallBack;
    :sswitch_6
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->pauseExInputEvent()V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v15, 0x1

    return v15

    .line 106
    :sswitch_7
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resumeExInputEvent()V

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

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v9

    .line 118
    .local v9, "_arg1":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/oem/os/IOemExService$Stub;->startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z

    move-result v14

    .line 119
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v14, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v15, 0x1

    return v15

    .line 120
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 125
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Lcom/oem/os/IOemUeventCallback;
    .end local v14    # "_result":Z
    :sswitch_9
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IOemUeventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemUeventCallback;

    move-result-object v4

    .line 128
    .local v4, "_arg0":Lcom/oem/os/IOemUeventCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/oem/os/IOemExService$Stub;->stopUevent(Lcom/oem/os/IOemUeventCallback;)Z

    move-result v14

    .line 129
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v14, :cond_4

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v15, 0x1

    return v15

    .line 130
    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    .line 135
    .end local v4    # "_arg0":Lcom/oem/os/IOemUeventCallback;
    .end local v14    # "_result":Z
    :sswitch_a
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_5

    const/4 v7, 0x1

    .line 139
    .local v7, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 140
    .local v10, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v11}, Lcom/oem/os/IOemExService$Stub;->setInteractive(ZJ)Z

    move-result v14

    .line 141
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v14, :cond_6

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v15, 0x1

    return v15

    .line 137
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v14    # "_result":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_5

    .line 142
    .restart local v10    # "_arg1":J
    .restart local v14    # "_result":Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 147
    .end local v7    # "_arg0":Z
    .end local v10    # "_arg1":J
    .end local v14    # "_result":Z
    :sswitch_b
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/oem/os/IOemExService$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 153
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v14, :cond_7

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v15, 0x1

    return v15

    .line 154
    :cond_7
    const/4 v15, 0x0

    goto :goto_7

    .line 159
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_c
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setKeyMode(I)Z

    move-result v14

    .line 163
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v14, :cond_8

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v15, 0x1

    return v15

    .line 164
    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    .line 169
    .end local v2    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_d
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->setHomeUpLock()Z

    move-result v14

    .line 171
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v14, :cond_9

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v15, 0x1

    return v15

    .line 172
    :cond_9
    const/4 v15, 0x0

    goto :goto_9

    .line 177
    .end local v14    # "_result":Z
    :sswitch_e
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setGammaData(I)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v15, 0x1

    return v15

    .line 186
    .end local v2    # "_arg0":I
    :sswitch_f
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorOffset(I)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v15, 0x1

    return v15

    .line 195
    .end local v2    # "_arg0":I
    :sswitch_10
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->setLaserSensorCrossTalk(I)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v15, 0x1

    return v15

    .line 204
    .end local v2    # "_arg0":I
    :sswitch_11
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/oem/os/IOemExService$Stub;->setPhoneHistoryRecord(II)I

    move-result v13

    .line 210
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v15, 0x1

    return v15

    .line 216
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v13    # "_result":I
    :sswitch_12
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oem/os/IOemExService$Stub;->getPhoneHistoryRecord(I)I

    move-result v13

    .line 220
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v15, 0x1

    return v15

    .line 226
    .end local v2    # "_arg0":I
    .end local v13    # "_result":I
    :sswitch_13
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->disableDefaultThreeKey()V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v15, 0x1

    return v15

    .line 233
    :sswitch_14
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->enalbeDefaultThreeKey()V

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

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 243
    .local v5, "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v15, 0x1

    return v15

    .line 249
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_16
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/oem/os/IThreeKeyPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IThreeKeyPolicy;

    move-result-object v5

    .line 252
    .restart local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oem/os/IOemExService$Stub;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v15, 0x1

    return v15

    .line 258
    .end local v5    # "_arg0":Lcom/oem/os/IThreeKeyPolicy;
    :sswitch_17
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->resetThreeKey()V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v15, 0x1

    return v15

    .line 265
    :sswitch_18
    const-string/jumbo v15, "com.oem.os.IOemExService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/oem/os/IOemExService$Stub;->getThreeKeyStatus()I

    move-result v13

    .line 267
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
