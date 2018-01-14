.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xe

.field static final TRANSACTION_cancelVibrate:I = 0x16

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0xd

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0xa

.field static final TRANSACTION_getKeyboardLayoutForInputDevice:I = 0x10

.field static final TRANSACTION_getKeyboardLayouts:I = 0x8

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0x9

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0x6

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isInTabletMode:I = 0x13

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x12

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x14

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_setCustomPointerIcon:I = 0x18

.field static final TRANSACTION_setIgnoreHardwareKey:I = 0x19

.field static final TRANSACTION_setKeyboardLayoutForInputDevice:I = 0x11

.field static final TRANSACTION_setPointerIconType:I = 0x17

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0x7

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string/jumbo v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 34
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

    .line 422
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v33

    return v33

    .line 43
    :sswitch_0
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v33, 0x1

    return v33

    .line 48
    :sswitch_1
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v27

    .line 52
    .local v27, "_result":Landroid/view/InputDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v27, :cond_0

    .line 54
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v33, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/16 v33, 0x1

    return v33

    .line 58
    :cond_0
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Landroid/view/InputDevice;
    :sswitch_2
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v30

    .line 66
    .local v30, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 68
    const/16 v33, 0x1

    return v33

    .line 72
    .end local v30    # "_result":[I
    :sswitch_3
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 78
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v19

    .line 80
    .local v19, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 81
    .local v23, "_arg3_length":I
    if-gez v23, :cond_1

    .line 82
    const/16 v22, 0x0

    .line 87
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v3, v11, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v29

    .line 88
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v29, :cond_2

    const/16 v33, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 91
    const/16 v33, 0x1

    return v33

    .line 85
    .end local v29    # "_result":Z
    :cond_1
    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    .local v22, "_arg3":[Z
    goto :goto_1

    .line 89
    .end local v22    # "_arg3":[Z
    .restart local v29    # "_result":Z
    :cond_2
    const/16 v33, 0x0

    goto :goto_2

    .line 95
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v19    # "_arg2":[I
    .end local v23    # "_arg3_length":I
    .end local v29    # "_result":Z
    :sswitch_4
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/16 v33, 0x1

    return v33

    .line 104
    .end local v3    # "_arg0":I
    :sswitch_5
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_3

    .line 107
    sget-object v33, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputEvent;

    .line 113
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 114
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v29

    .line 115
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v29, :cond_4

    const/16 v33, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/16 v33, 0x1

    return v33

    .line 110
    .end local v11    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_3
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/view/InputEvent;
    goto :goto_3

    .line 116
    .end local v7    # "_arg0":Landroid/view/InputEvent;
    .restart local v11    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_4
    const/16 v33, 0x0

    goto :goto_4

    .line 121
    .end local v11    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_6
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 126
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v26

    .line 127
    .local v26, "_result":Landroid/hardware/input/TouchCalibration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v26, :cond_5

    .line 129
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/16 v33, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 135
    :goto_5
    const/16 v33, 0x1

    return v33

    .line 133
    :cond_5
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 139
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v26    # "_result":Landroid/hardware/input/TouchCalibration;
    :sswitch_7
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 145
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_6

    .line 146
    sget-object v33, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/input/TouchCalibration;

    .line 151
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v11, v1}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/16 v33, 0x1

    return v33

    .line 149
    :cond_6
    const/16 v17, 0x0

    .local v17, "_arg2":Landroid/hardware/input/TouchCalibration;
    goto :goto_6

    .line 157
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":I
    .end local v17    # "_arg2":Landroid/hardware/input/TouchCalibration;
    :sswitch_8
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v31

    .line 159
    .local v31, "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    const/16 v33, 0x1

    return v33

    .line 165
    .end local v31    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :sswitch_9
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_7

    .line 168
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 173
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v31

    .line 174
    .restart local v31    # "_result":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 176
    const/16 v33, 0x1

    return v33

    .line 171
    .end local v31    # "_result":[Landroid/hardware/input/KeyboardLayout;
    :cond_7
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_7

    .line 180
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_a
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 183
    .restart local v9    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v25

    .line 184
    .local v25, "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v25, :cond_8

    .line 186
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 192
    :goto_8
    const/16 v33, 0x1

    return v33

    .line 190
    :cond_8
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 196
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_b
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_9

    .line 199
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 204
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v28

    .line 205
    .local v28, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    const/16 v33, 0x1

    return v33

    .line 202
    .end local v28    # "_result":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_9

    .line 211
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_c
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_a

    .line 214
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 220
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/16 v33, 0x1

    return v33

    .line 217
    .end local v14    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_a

    .line 227
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_d
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_b

    .line 230
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 235
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v32

    .line 236
    .local v32, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 238
    const/16 v33, 0x1

    return v33

    .line 233
    .end local v32    # "_result":[Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_b

    .line 242
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_e
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_c

    .line 245
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 251
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 252
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/16 v33, 0x1

    return v33

    .line 248
    .end local v14    # "_arg1":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_c

    .line 258
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_f
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_d

    .line 261
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 267
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 268
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/16 v33, 0x1

    return v33

    .line 264
    .end local v14    # "_arg1":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_d

    .line 274
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :sswitch_10
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_e

    .line 277
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 283
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_f

    .line 284
    sget-object v33, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 290
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_10

    .line 291
    sget-object v33, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    .line 296
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v13, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v25

    .line 297
    .restart local v25    # "_result":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v25, :cond_11

    .line 299
    const/16 v33, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    :goto_11
    const/16 v33, 0x1

    return v33

    .line 280
    .end local v25    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_e

    .line 287
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_f
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_f

    .line 294
    .end local v13    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_10
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_10

    .line 303
    .end local v18    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v25    # "_result":Landroid/hardware/input/KeyboardLayout;
    :cond_11
    const/16 v33, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 309
    .end local v25    # "_result":Landroid/hardware/input/KeyboardLayout;
    :sswitch_11
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_12

    .line 312
    sget-object v33, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputDeviceIdentifier;

    .line 318
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_13

    .line 319
    sget-object v33, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 325
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_14

    .line 326
    sget-object v33, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    .line 332
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 333
    .local v21, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v6, v13, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/16 v33, 0x1

    return v33

    .line 315
    .end local v21    # "_arg3":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    goto :goto_12

    .line 322
    .end local v6    # "_arg0":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_13
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_13

    .line 329
    .end local v13    # "_arg1":Landroid/view/inputmethod/InputMethodInfo;
    :cond_14
    const/16 v18, 0x0

    .restart local v18    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_14

    .line 339
    .end local v18    # "_arg2":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_12
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v4

    .line 342
    .local v4, "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/16 v33, 0x1

    return v33

    .line 348
    .end local v4    # "_arg0":Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_13
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result v24

    .line 350
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/16 v33, 0x1

    return v33

    .line 356
    .end local v24    # "_result":I
    :sswitch_14
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object v5

    .line 359
    .local v5, "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/16 v33, 0x1

    return v33

    .line 365
    .end local v5    # "_arg0":Landroid/hardware/input/ITabletModeChangedListener;
    :sswitch_15
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 369
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v15

    .line 371
    .local v15, "_arg1":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 373
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 374
    .local v20, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v15, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/16 v33, 0x1

    return v33

    .line 380
    .end local v3    # "_arg0":I
    .end local v15    # "_arg1":[J
    .end local v16    # "_arg2":I
    .end local v20    # "_arg3":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 384
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 385
    .local v12, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/16 v33, 0x1

    return v33

    .line 391
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 394
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/16 v33, 0x1

    return v33

    .line 400
    .end local v3    # "_arg0":I
    :sswitch_18
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_15

    .line 403
    sget-object v33, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/PointerIcon;

    .line 408
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/16 v33, 0x1

    return v33

    .line 406
    :cond_15
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/view/PointerIcon;
    goto :goto_15

    .line 414
    .end local v8    # "_arg0":Landroid/view/PointerIcon;
    :sswitch_19
    const-string/jumbo v33, "android.hardware.input.IInputManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    if-eqz v33, :cond_16

    const/4 v10, 0x1

    .line 417
    .local v10, "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/hardware/input/IInputManager$Stub;->setIgnoreHardwareKey(Z)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/16 v33, 0x1

    return v33

    .line 416
    .end local v10    # "_arg0":Z
    :cond_16
    const/4 v10, 0x0

    goto :goto_16

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
