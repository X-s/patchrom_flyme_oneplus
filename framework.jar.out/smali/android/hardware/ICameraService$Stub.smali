.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x5

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0xb

.field static final TRANSACTION_getCameraCharacteristics:I = 0x7

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x8

.field static final TRANSACTION_getLegacyParameters:I = 0x9

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_notifySystemEvent:I = 0xd

.field static final TRANSACTION_removeListener:I = 0x6

.field static final TRANSACTION_setTorchMode:I = 0xc

.field static final TRANSACTION_supportsCameraApi:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
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
    const-string v1, "android.hardware.ICameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/hardware/ICameraService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/hardware/ICameraService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v8

    .line 56
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v1    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .restart local v1    # "_arg0":I
    new-instance v2, Landroid/hardware/CameraInfo;

    invoke-direct {v2}, Landroid/hardware/CameraInfo;-><init>()V

    .line 67
    .local v2, "_arg1":Landroid/hardware/CameraInfo;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    move-result v8

    .line 68
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v9}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/CameraInfo;
    .end local v8    # "_result":I
    :sswitch_3
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .local v4, "_arg3":I
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .local v5, "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v8

    .line 93
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    if-eqz v5, :cond_1

    .line 96
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v5, p3, v9}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v1    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v8    # "_result":I
    :sswitch_4
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    .line 110
    .local v1, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .restart local v4    # "_arg3":I
    new-instance v5, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v5}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .restart local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v8

    .line 118
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    if-eqz v5, :cond_2

    .line 121
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v5, p3, v9}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v8    # "_result":I
    :sswitch_5
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 134
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v8

    .line 135
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v8    # "_result":I
    :sswitch_6
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)I

    move-result v8

    .line 145
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v8    # "_result":I
    :sswitch_7
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, "_arg0":I
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 156
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v8

    .line 157
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v2, p3, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 164
    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "_result":I
    :sswitch_8
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    new-instance v1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 173
    .local v1, "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v8

    .line 174
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v1, p3, v9}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 181
    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v1    # "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v8    # "_result":I
    :sswitch_9
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 192
    .local v7, "_arg1_length":I
    if-gez v7, :cond_5

    .line 193
    const/4 v2, 0x0

    .line 198
    .local v2, "_arg1":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I[Ljava/lang/String;)I

    move-result v8

    .line 199
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v8    # "_result":I
    :cond_5
    new-array v2, v7, [Ljava/lang/String;

    .restart local v2    # "_arg1":[Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v7    # "_arg1_length":I
    :sswitch_a
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(II)I

    move-result v8

    .line 212
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_b
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v1

    .line 222
    .local v1, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .local v5, "_arg4":I
    new-instance v6, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v6}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .local v6, "_arg5":Landroid/hardware/camera2/utils/BinderHolder;
    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result v8

    .line 232
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    if-eqz v6, :cond_6

    .line 235
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v6, p3, v9}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 239
    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v1    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v8    # "_result":I
    :sswitch_c
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v2, v9

    .line 251
    .local v2, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 252
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)I

    move-result v8

    .line 253
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v8    # "_result":I
    :cond_7
    move v2, v10

    .line 249
    goto :goto_2

    .line 259
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 264
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    goto/16 :goto_0

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
