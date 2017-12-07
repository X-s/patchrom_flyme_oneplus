.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x28

.field static final TRANSACTION_addMediaPlayerAndUpdateRemoteController:I = 0x45

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1d

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x3a

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x6

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2e

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x43

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x2a

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xc

.field static final TRANSACTION_getMode:I = 0x17

.field static final TRANSACTION_getRingerModeExternal:I = 0x10

.field static final TRANSACTION_getRingerModeInternal:I = 0x11

.field static final TRANSACTION_getRingtonePlayer:I = 0x30

.field static final TRANSACTION_getStreamMaxVolume:I = 0xb

.field static final TRANSACTION_getStreamMinVolume:I = 0xa

.field static final TRANSACTION_getStreamVolume:I = 0x9

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x31

.field static final TRANSACTION_getVibrateSetting:I = 0x14

.field static final TRANSACTION_isASBluetoothA2dpOn:I = 0x23

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x26

.field static final TRANSACTION_isBluetoothScoOn:I = 0x22

.field static final TRANSACTION_isCameraSoundForced:I = 0x35

.field static final TRANSACTION_isHasSpeakerAuthority:I = 0x24

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x3c

.field static final TRANSACTION_isMasterMute:I = 0x7

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1f

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x39

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x38

.field static final TRANSACTION_isStreamMute:I = 0x5

.field static final TRANSACTION_isValidRingerMode:I = 0x12

.field static final TRANSACTION_loadSoundEffects:I = 0x1a

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x37

.field static final TRANSACTION_playSoundEffect:I = 0x18

.field static final TRANSACTION_playSoundEffectVolume:I = 0x19

.field static final TRANSACTION_registerAudioPolicy:I = 0x3d

.field static final TRANSACTION_registerRecordingCallback:I = 0x41

.field static final TRANSACTION_reloadAudioSettings:I = 0x1c

.field static final TRANSACTION_removeMediaPlayerAndUpdateRemoteController:I = 0x46

.field static final TRANSACTION_requestAudioFocus:I = 0x27

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x33

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x25

.field static final TRANSACTION_setBluetoothCtsScoOn:I = 0x21

.field static final TRANSACTION_setBluetoothScoOn:I = 0x20

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3f

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x3b

.field static final TRANSACTION_setMasterMute:I = 0x8

.field static final TRANSACTION_setMicrophoneMute:I = 0xd

.field static final TRANSACTION_setMode:I = 0x16

.field static final TRANSACTION_setOnePlusFixedRingerMode:I = 0x48

.field static final TRANSACTION_setOnePlusRingVolumeRange:I = 0x47

.field static final TRANSACTION_setRingerModeExternal:I = 0xe

.field static final TRANSACTION_setRingerModeInternal:I = 0xf

.field static final TRANSACTION_setRingtonePlayer:I = 0x2f

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x13

.field static final TRANSACTION_setVolumeController:I = 0x36

.field static final TRANSACTION_setVolumePolicy:I = 0x40

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x32

.field static final TRANSACTION_shouldVibrate:I = 0x15

.field static final TRANSACTION_startBluetoothSco:I = 0x2b

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x2c

.field static final TRANSACTION_startWatchingRoutes:I = 0x34

.field static final TRANSACTION_stopBluetoothSco:I = 0x2d

.field static final TRANSACTION_threeKeySetStreamVolume:I = 0x4

.field static final TRANSACTION_unloadSoundEffects:I = 0x1b

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x29

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3e

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x42

.field static final TRANSACTION_updateRemoteControllerOnExistingMediaPlayers:I = 0x44


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 51
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 813
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 54
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 56
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 61
    invoke-virtual/range {v4 .. v9}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v4, 0x1

    return v4

    .line 66
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 70
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 72
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 74
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 75
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v4, 0x1

    return v4

    .line 81
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 87
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 89
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 90
    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v4, 0x1

    return v4

    .line 96
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 102
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 104
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 105
    .local v44, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/media/IAudioService$Stub;->threeKeySetStreamVolume(IIII)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v4, 0x1

    return v4

    .line 111
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v44    # "_arg3":I
    :sswitch_5
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v50

    .line 115
    .local v50, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v50, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v4, 0x1

    return v4

    .line 116
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 121
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v36, 0x1

    .line 125
    .local v36, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 126
    .local v39, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v4, 0x1

    return v4

    .line 123
    .end local v36    # "_arg0":Z
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/16 v36, 0x0

    .restart local v36    # "_arg0":Z
    goto :goto_1

    .line 132
    .end local v36    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v50

    .line 134
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v50, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 135
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 140
    .end local v50    # "_result":Z
    :sswitch_8
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v36, 0x1

    .line 144
    .restart local v36    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 146
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 148
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 149
    .restart local v44    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v22

    move/from16 v3, v44

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v4, 0x1

    return v4

    .line 142
    .end local v6    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    .end local v44    # "_arg3":I
    :cond_3
    const/16 v36, 0x0

    .restart local v36    # "_arg0":Z
    goto :goto_3

    .line 155
    .end local v36    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 158
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v45

    .line 159
    .local v45, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v4, 0x1

    return v4

    .line 165
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 168
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v45

    .line 169
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v4, 0x1

    return v4

    .line 175
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 178
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v45

    .line 179
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v4, 0x1

    return v4

    .line 185
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v45

    .line 189
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v4, 0x1

    return v4

    .line 195
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v36, 0x1

    .line 199
    .restart local v36    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 201
    .local v40, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 202
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v7}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 197
    .end local v7    # "_arg2":I
    .end local v36    # "_arg0":Z
    .end local v40    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v36, 0x0

    .restart local v36    # "_arg0":Z
    goto :goto_4

    .line 208
    .end local v36    # "_arg0":Z
    :sswitch_e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 213
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v4, 0x1

    return v4

    .line 219
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 223
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 224
    .restart local v40    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v4, 0x1

    return v4

    .line 230
    .end local v5    # "_arg0":I
    .end local v40    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v45

    .line 232
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v4, 0x1

    return v4

    .line 238
    .end local v45    # "_result":I
    :sswitch_11
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v45

    .line 240
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v4, 0x1

    return v4

    .line 246
    .end local v45    # "_result":I
    :sswitch_12
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v50

    .line 250
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    if-eqz v50, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v4, 0x1

    return v4

    .line 251
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 256
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v4, 0x1

    return v4

    .line 267
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_14
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 270
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v45

    .line 271
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v4, 0x1

    return v4

    .line 277
    .end local v5    # "_arg0":I
    .end local v45    # "_result":I
    :sswitch_15
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 280
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v50

    .line 281
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v50, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v4, 0x1

    return v4

    .line 282
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 287
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 293
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 294
    .restart local v22    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v4, 0x1

    return v4

    .line 300
    .end local v5    # "_arg0":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v45

    .line 302
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v4, 0x1

    return v4

    .line 308
    .end local v45    # "_result":I
    :sswitch_18
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 311
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 312
    const/4 v4, 0x1

    return v4

    .line 316
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 320
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v37

    .line 321
    .local v37, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 326
    .end local v5    # "_arg0":I
    .end local v37    # "_arg1":F
    :sswitch_1a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v50

    .line 328
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v50, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v4, 0x1

    return v4

    .line 329
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 334
    .end local v50    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 336
    const/4 v4, 0x1

    return v4

    .line 340
    :sswitch_1c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 342
    const/4 v4, 0x1

    return v4

    .line 346
    :sswitch_1d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 350
    .local v35, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v41, 0x1

    .line 351
    .local v41, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 352
    const/4 v4, 0x1

    return v4

    .line 350
    .end local v41    # "_arg1":Z
    :cond_8
    const/16 v41, 0x0

    goto :goto_8

    .line 356
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v36, 0x1

    .line 359
    .local v36, "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v4, 0x1

    return v4

    .line 358
    .end local v36    # "_arg0":Z
    :cond_9
    const/16 v36, 0x0

    goto :goto_9

    .line 365
    :sswitch_1f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v50

    .line 367
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    if-eqz v50, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    const/4 v4, 0x1

    return v4

    .line 368
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 373
    .end local v50    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v36, 0x1

    .line 376
    .restart local v36    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v4, 0x1

    return v4

    .line 375
    .end local v36    # "_arg0":Z
    :cond_b
    const/16 v36, 0x0

    goto :goto_b

    .line 382
    :sswitch_21
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/16 v36, 0x1

    .line 385
    .restart local v36    # "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothCtsScoOn(Z)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v4, 0x1

    return v4

    .line 384
    .end local v36    # "_arg0":Z
    :cond_c
    const/16 v36, 0x0

    goto :goto_c

    .line 391
    :sswitch_22
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v50

    .line 393
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v50, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v4, 0x1

    return v4

    .line 394
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 399
    .end local v50    # "_result":Z
    :sswitch_23
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isASBluetoothA2dpOn()Z

    move-result v50

    .line 401
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    if-eqz v50, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v4, 0x1

    return v4

    .line 402
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 407
    .end local v50    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 410
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isHasSpeakerAuthority(Ljava/lang/String;)Z

    move-result v50

    .line 411
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v50, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/4 v4, 0x1

    return v4

    .line 412
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 417
    .end local v35    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":Z
    :sswitch_25
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v36, 0x1

    .line 420
    .restart local v36    # "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 419
    .end local v36    # "_arg0":Z
    :cond_10
    const/16 v36, 0x0

    goto :goto_10

    .line 426
    :sswitch_26
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v50

    .line 428
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v50, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v4, 0x1

    return v4

    .line 429
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 434
    .end local v50    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 437
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioAttributes;

    .line 443
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 445
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 447
    .local v13, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v14

    .line 449
    .local v14, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 451
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 453
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 455
    .local v17, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v18

    .local v18, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v10, p0

    move v12, v6

    move-object v15, v9

    .line 456
    invoke-virtual/range {v10 .. v18}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v45

    .line 457
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x1

    return v4

    .line 440
    .end local v6    # "_arg1":I
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":I
    .end local v18    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v45    # "_result":I
    :cond_12
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_12

    .line 463
    .end local v11    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_28
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v26

    .line 467
    .local v26, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 469
    .restart local v40    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 470
    sget-object v4, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/media/AudioAttributes;

    .line 475
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v40

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v45

    .line 476
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v4, 0x1

    return v4

    .line 473
    .end local v45    # "_result":I
    :cond_13
    const/16 v42, 0x0

    .local v42, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_13

    .line 482
    .end local v26    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v40    # "_arg1":Ljava/lang/String;
    .end local v42    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_29
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 485
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v4, 0x1

    return v4

    .line 491
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v45

    .line 493
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v4, 0x1

    return v4

    .line 499
    .end local v45    # "_result":I
    :sswitch_2b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    .line 503
    .local v34, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v6}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v4, 0x1

    return v4

    .line 510
    .end local v6    # "_arg1":I
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    .line 513
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v4, 0x1

    return v4

    .line 519
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    .line 522
    .restart local v34    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    const/4 v4, 0x1

    return v4

    .line 528
    .end local v34    # "_arg0":Landroid/os/IBinder;
    :sswitch_2e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 532
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 533
    .restart local v39    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v4, 0x1

    return v4

    .line 539
    .end local v5    # "_arg0":I
    .end local v39    # "_arg1":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v29

    .line 542
    .local v29, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    const/4 v4, 0x1

    return v4

    .line 548
    .end local v29    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_30
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v47

    .line 550
    .local v47, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v47, :cond_14

    invoke-interface/range {v47 .. v47}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 552
    const/4 v4, 0x1

    return v4

    .line 551
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 556
    .end local v47    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_31
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v45

    .line 558
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    const/4 v4, 0x1

    return v4

    .line 564
    .end local v45    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 568
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 570
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 572
    .restart local v22    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 574
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_arg4":Ljava/lang/String;
    move-object/from16 v19, p0

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .line 575
    invoke-virtual/range {v19 .. v24}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v4, 0x1

    return v4

    .line 581
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 584
    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    .line 590
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 592
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 593
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6, v7}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v45

    .line 594
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v4, 0x1

    return v4

    .line 587
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v45    # "_result":I
    :cond_15
    const/16 v25, 0x0

    .local v25, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_15

    .line 600
    .end local v25    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_34
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v27

    .line 603
    .local v27, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v46

    .line 604
    .local v46, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v46, :cond_16

    .line 606
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    :goto_16
    const/4 v4, 0x1

    return v4

    .line 610
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 616
    .end local v27    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v46    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_35
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v50

    .line 618
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v50, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v4, 0x1

    return v4

    .line 619
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 624
    .end local v50    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v30

    .line 627
    .local v30, "_arg0":Landroid/media/IVolumeController;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v4, 0x1

    return v4

    .line 633
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_37
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v30

    .line 637
    .restart local v30    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v41, 0x1

    .line 638
    .restart local v41    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v4, 0x1

    return v4

    .line 637
    .end local v41    # "_arg1":Z
    :cond_18
    const/16 v41, 0x0

    goto :goto_18

    .line 644
    .end local v30    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_38
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 647
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v50

    .line 648
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    if-eqz v50, :cond_19

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    const/4 v4, 0x1

    return v4

    .line 649
    :cond_19
    const/4 v4, 0x0

    goto :goto_19

    .line 654
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 657
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v50

    .line 658
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v50, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v4, 0x1

    return v4

    .line 659
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 664
    .end local v5    # "_arg0":I
    .end local v50    # "_result":Z
    :sswitch_3a
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 667
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v4, 0x1

    return v4

    .line 673
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v36, 0x1

    .line 676
    .restart local v36    # "_arg0":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v45

    .line 677
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v4, 0x1

    return v4

    .line 675
    .end local v36    # "_arg0":Z
    .end local v45    # "_result":I
    :cond_1b
    const/16 v36, 0x0

    goto :goto_1b

    .line 683
    :sswitch_3c
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v50

    .line 685
    .restart local v50    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    if-eqz v50, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v4, 0x1

    return v4

    .line 686
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 691
    .end local v50    # "_result":Z
    :sswitch_3d
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 694
    sget-object v4, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 700
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v38

    .line 702
    .local v38, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v43, 0x1

    .line 703
    .local v43, "_arg2":Z
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v38

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;

    move-result-object v48

    .line 704
    .local v48, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 706
    const/4 v4, 0x1

    return v4

    .line 697
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v43    # "_arg2":Z
    .end local v48    # "_result":Ljava/lang/String;
    :cond_1d
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_1d

    .line 702
    .end local v32    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1e
    const/16 v43, 0x0

    goto :goto_1e

    .line 710
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3e
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v33

    .line 713
    .local v33, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 714
    const/4 v4, 0x1

    return v4

    .line 718
    .end local v33    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3f
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 722
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v38

    .line 723
    .restart local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v45

    .line 724
    .restart local v45    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, p3

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v4, 0x1

    return v4

    .line 730
    .end local v5    # "_arg0":I
    .end local v38    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v45    # "_result":I
    :sswitch_40
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 733
    sget-object v4, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/media/VolumePolicy;

    .line 738
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    const/4 v4, 0x1

    return v4

    .line 736
    :cond_1f
    const/16 v31, 0x0

    .local v31, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_1f

    .line 744
    .end local v31    # "_arg0":Landroid/media/VolumePolicy;
    :sswitch_41
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v28

    .line 747
    .local v28, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v4, 0x1

    return v4

    .line 753
    .end local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_42
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v28

    .line 756
    .restart local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 757
    const/4 v4, 0x1

    return v4

    .line 761
    .end local v28    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_43
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v49

    .line 763
    .local v49, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 765
    const/4 v4, 0x1

    return v4

    .line 769
    .end local v49    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :sswitch_44
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->updateRemoteControllerOnExistingMediaPlayers()V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v4, 0x1

    return v4

    .line 776
    :sswitch_45
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 779
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v4, 0x1

    return v4

    .line 785
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 788
    .restart local v35    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->removeMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    const/4 v4, 0x1

    return v4

    .line 794
    .end local v35    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 798
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 799
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/media/IAudioService$Stub;->setOnePlusRingVolumeRange(II)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v4, 0x1

    return v4

    .line 805
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_48
    const-string/jumbo v4, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/16 v36, 0x1

    .line 808
    .restart local v36    # "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setOnePlusFixedRingerMode(Z)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v4, 0x1

    return v4

    .line 807
    .end local v36    # "_arg0":Z
    :cond_20
    const/16 v36, 0x0

    goto :goto_20

    .line 41
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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
