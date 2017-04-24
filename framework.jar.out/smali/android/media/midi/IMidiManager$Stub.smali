.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final TRANSACTION_closeDevice:I = 0x6

.field static final TRANSACTION_getDeviceStatus:I = 0xa

.field static final TRANSACTION_getDevices:I = 0x1

.field static final TRANSACTION_getServiceDeviceInfo:I = 0x9

.field static final TRANSACTION_openBluetoothDevice:I = 0x5

.field static final TRANSACTION_openDevice:I = 0x4

.field static final TRANSACTION_registerDeviceServer:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x2

.field static final TRANSACTION_setDeviceStatus:I = 0xb

.field static final TRANSACTION_unregisterDeviceServer:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
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
    const-string v1, "android.media.midi.IMidiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/media/midi/IMidiManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/media/midi/IMidiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/media/midi/IMidiManager$Stub;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .line 50
    .local v8, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v9

    .line 52
    goto :goto_0

    .line 56
    .end local v8    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :sswitch_2
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 60
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v2

    .line 61
    .local v2, "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 63
    goto :goto_0

    .line 67
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_3
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 71
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v2

    .line 72
    .restart local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 74
    goto :goto_0

    .line 78
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :sswitch_4
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceInfo;

    .line 89
    .local v2, "_arg1":Landroid/media/midi/MidiDeviceInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v3

    .line 90
    .local v3, "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/midi/IMidiManager$Stub;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 92
    goto :goto_0

    .line 86
    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    .end local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_1

    .line 96
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_5
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 107
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v3

    .line 108
    .restart local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/midi/IMidiManager$Stub;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 110
    goto/16 :goto_0

    .line 104
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 114
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 119
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 121
    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .line 129
    .local v1, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "_arg4":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 144
    .local v6, "_arg5":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v7}, Landroid/media/midi/IMidiManager$Stub;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .line 146
    .local v8, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v8, :cond_3

    .line 148
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v9

    .line 154
    goto/16 :goto_0

    .line 141
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/os/Bundle;
    goto :goto_3

    .line 152
    .restart local v7    # "_arg6":I
    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 158
    .end local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_arg4":[Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_8
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiManager$Stub;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 163
    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    :sswitch_9
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v8

    .line 173
    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v8, :cond_4

    .line 175
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v9

    .line 181
    goto/16 :goto_0

    .line 179
    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :sswitch_a
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceInfo;

    .line 193
    .local v1, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    :goto_6
    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiManager$Stub;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object v8

    .line 194
    .local v8, "_result":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v8, :cond_6

    .line 196
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v8, p3, v9}, Landroid/media/midi/MidiDeviceStatus;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    move v0, v9

    .line 202
    goto/16 :goto_0

    .line 191
    .end local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    goto :goto_6

    .line 200
    .restart local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 206
    .end local v1    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v8    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :sswitch_b
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v1

    .line 210
    .local v1, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    sget-object v0, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiDeviceStatus;

    .line 216
    .local v2, "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 218
    goto/16 :goto_0

    .line 214
    .end local v2    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    goto :goto_8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
