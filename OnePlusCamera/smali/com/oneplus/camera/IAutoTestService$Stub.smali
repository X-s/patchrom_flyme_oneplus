.class public abstract Lcom/oneplus/camera/IAutoTestService$Stub;
.super Landroid/os/Binder;
.source "IAutoTestService.java"

# interfaces
.implements Lcom/oneplus/camera/IAutoTestService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/IAutoTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/IAutoTestService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.camera.IAutoTestService"

.field static final TRANSACTION_getBooleanState:I = 0x1

.field static final TRANSACTION_getFloatState:I = 0x2

.field static final TRANSACTION_getIntState:I = 0x3

.field static final TRANSACTION_getLongState:I = 0x4

.field static final TRANSACTION_getStringState:I = 0x5

.field static final TRANSACTION_isActivityAttached:I = 0xf

.field static final TRANSACTION_performAction:I = 0x6

.field static final TRANSACTION_setBooleanState:I = 0x7

.field static final TRANSACTION_setFloatState:I = 0x8

.field static final TRANSACTION_setIntState:I = 0x9

.field static final TRANSACTION_setLongState:I = 0xa

.field static final TRANSACTION_setStringState:I = 0xb

.field static final TRANSACTION_start:I = 0xc

.field static final TRANSACTION_startAutoFocus:I = 0xd

.field static final TRANSACTION_startCameraActivity:I = 0x10

.field static final TRANSACTION_stop:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.oneplus.camera.IAutoTestService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/camera/IAutoTestService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/camera/IAutoTestService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.oneplus.camera.IAutoTestService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/camera/IAutoTestService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oneplus/camera/IAutoTestService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/oneplus/camera/IAutoTestService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/IAutoTestService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    return v16

    .line 42
    :sswitch_0
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/16 v16, 0x1

    return v16

    .line 47
    :sswitch_1
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_0

    const/4 v9, 0x1

    .line 52
    .local v9, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/oneplus/camera/IAutoTestService$Stub;->getBooleanState(Ljava/lang/String;Z)Z

    move-result v15

    .line 53
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v15, :cond_1

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v16, 0x1

    return v16

    .line 51
    .end local v9    # "_arg1":Z
    .end local v15    # "_result":Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 54
    .restart local v9    # "_arg1":Z
    .restart local v15    # "_result":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 59
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v15    # "_result":Z
    :sswitch_2
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 64
    .local v4, "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/IAutoTestService$Stub;->getFloatState(Ljava/lang/String;F)F

    move-result v10

    .line 65
    .local v10, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 67
    const/16 v16, 0x1

    return v16

    .line 71
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":F
    .end local v10    # "_result":F
    :sswitch_3
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 76
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/IAutoTestService$Stub;->getIntState(Ljava/lang/String;I)I

    move-result v11

    .line 77
    .local v11, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/16 v16, 0x1

    return v16

    .line 83
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v11    # "_result":I
    :sswitch_4
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 88
    .local v6, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lcom/oneplus/camera/IAutoTestService$Stub;->getLongState(Ljava/lang/String;J)J

    move-result-wide v12

    .line 89
    .local v12, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    const/16 v16, 0x1

    return v16

    .line 95
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v12    # "_result":J
    :sswitch_5
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/oneplus/camera/IAutoTestService$Stub;->getStringState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    const/16 v16, 0x1

    return v16

    .line 107
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 112
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/IAutoTestService$Stub;->performAction(Ljava/lang/String;I)Z

    move-result v15

    .line 113
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v15, :cond_2

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v16, 0x1

    return v16

    .line 114
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 119
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_7
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_3

    const/4 v9, 0x1

    .line 124
    .restart local v9    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/oneplus/camera/IAutoTestService$Stub;->setBooleanState(Ljava/lang/String;Z)Z

    move-result v15

    .line 125
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v15, :cond_4

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/16 v16, 0x1

    return v16

    .line 123
    .end local v9    # "_arg1":Z
    .end local v15    # "_result":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 126
    .restart local v9    # "_arg1":Z
    .restart local v15    # "_result":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    .line 131
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Z
    .end local v15    # "_result":Z
    :sswitch_8
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 136
    .restart local v4    # "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/IAutoTestService$Stub;->setFloatState(Ljava/lang/String;F)Z

    move-result v15

    .line 137
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v15, :cond_5

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/16 v16, 0x1

    return v16

    .line 138
    :cond_5
    const/16 v16, 0x0

    goto :goto_5

    .line 143
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":F
    .end local v15    # "_result":Z
    :sswitch_9
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 148
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/IAutoTestService$Stub;->setIntState(Ljava/lang/String;I)Z

    move-result v15

    .line 149
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v15, :cond_6

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/16 v16, 0x1

    return v16

    .line 150
    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    .line 155
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_a
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 160
    .restart local v6    # "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7}, Lcom/oneplus/camera/IAutoTestService$Stub;->setLongState(Ljava/lang/String;J)Z

    move-result v15

    .line 161
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v15, :cond_7

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/16 v16, 0x1

    return v16

    .line 162
    :cond_7
    const/16 v16, 0x0

    goto :goto_7

    .line 167
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":J
    .end local v15    # "_result":Z
    :sswitch_b
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/oneplus/camera/IAutoTestService$Stub;->setStringState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 173
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v15, :cond_8

    const/16 v16, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/16 v16, 0x1

    return v16

    .line 174
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 179
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_c
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 184
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/IAutoTestService$Stub;->start(Ljava/lang/String;I)Z

    move-result v15

    .line 185
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v15, :cond_9

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/16 v16, 0x1

    return v16

    .line 186
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 191
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v15    # "_result":Z
    :sswitch_d
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 195
    .local v2, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 196
    .restart local v4    # "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/camera/IAutoTestService$Stub;->startAutoFocus(FF)Z

    move-result v15

    .line 197
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v15, :cond_a

    const/16 v16, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/16 v16, 0x1

    return v16

    .line 198
    :cond_a
    const/16 v16, 0x0

    goto :goto_a

    .line 203
    .end local v2    # "_arg0":F
    .end local v4    # "_arg1":F
    .end local v15    # "_result":Z
    :sswitch_e
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/IAutoTestService$Stub;->stop()V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v16, 0x1

    return v16

    .line 210
    :sswitch_f
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/IAutoTestService$Stub;->isActivityAttached()Z

    move-result v15

    .line 212
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v15, :cond_b

    const/16 v16, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/16 v16, 0x1

    return v16

    .line 213
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 218
    .end local v15    # "_result":Z
    :sswitch_10
    const-string/jumbo v16, "com.oneplus.camera.IAutoTestService"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 223
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/oneplus/camera/IAutoTestService$Stub;->startCameraActivity(Ljava/lang/String;I)Z

    move-result v15

    .line 224
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v15, :cond_c

    const/16 v16, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/16 v16, 0x1

    return v16

    .line 225
    :cond_c
    const/16 v16, 0x0

    goto :goto_c

    .line 38
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
