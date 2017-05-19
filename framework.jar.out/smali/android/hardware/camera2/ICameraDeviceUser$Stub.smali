.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
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
    const-string v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 64
    .local v0, "_arg0":Landroid/hardware/camera2/CaptureRequest;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 66
    .local v2, "_arg1":Z
    :goto_2
    new-instance v3, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v3}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 67
    .local v3, "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v4

    .line 68
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v3, p3, v5}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_1

    :cond_1
    move v2, v6

    .line 64
    goto :goto_2

    .line 75
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v4    # "_result":I
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v2, v5

    .line 87
    .restart local v2    # "_arg1":Z
    :goto_3
    new-instance v3, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v3}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 88
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList(Ljava/util/List;ZLandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v4

    .line 89
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    if-eqz v3, :cond_4

    .line 92
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v5}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :cond_3
    move v2, v6

    .line 85
    goto :goto_3

    .line 96
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .restart local v4    # "_result":I
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :sswitch_4
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    new-instance v2, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v2}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 107
    .local v2, "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(ILandroid/hardware/camera2/utils/LongParcelable;)I

    move-result v4

    .line 108
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    if-eqz v2, :cond_5

    .line 111
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v2, p3, v5}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 115
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()I

    move-result v4

    .line 123
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v4    # "_result":I
    :sswitch_6
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v0, v5

    .line 132
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(Z)I

    move-result v4

    .line 133
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_6
    move v0, v6

    .line 131
    goto :goto_4

    .line 139
    :sswitch_7
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)I

    move-result v4

    .line 143
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_8
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 152
    sget-object v6, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 157
    .local v0, "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v4

    .line 158
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v4    # "_result":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_5

    .line 164
    .end local v0    # "_arg0":Landroid/hardware/camera2/params/OutputConfiguration;
    :sswitch_9
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    move-result v4

    .line 172
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_a
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    .line 181
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface(Landroid/view/Surface;)I

    move-result v4

    .line 182
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    if-eqz v0, :cond_8

    .line 185
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v0, p3, v5}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 189
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Landroid/view/Surface;
    .end local v4    # "_result":I
    :sswitch_b
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .local v0, "_arg0":I
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 200
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v4

    .line 201
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    if-eqz v2, :cond_9

    .line 204
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v2, p3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 208
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":I
    :sswitch_c
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 217
    .local v0, "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo(Landroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result v4

    .line 218
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    if-eqz v0, :cond_a

    .line 221
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 225
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "_result":I
    :sswitch_d
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()I

    move-result v4

    .line 233
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v4    # "_result":I
    :sswitch_e
    const-string v7, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/hardware/camera2/utils/LongParcelable;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/LongParcelable;-><init>()V

    .line 242
    .local v0, "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush(Landroid/hardware/camera2/utils/LongParcelable;)I

    move-result v4

    .line 243
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    if-eqz v0, :cond_b

    .line 246
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p3, v5}, Landroid/hardware/camera2/utils/LongParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 250
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Landroid/hardware/camera2/utils/LongParcelable;
    .end local v4    # "_result":I
    :sswitch_f
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)I

    move-result v4

    .line 260
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_10
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)I

    move-result v4

    .line 270
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_11
    const-string v6, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 281
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)I

    move-result v4

    .line 282
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
