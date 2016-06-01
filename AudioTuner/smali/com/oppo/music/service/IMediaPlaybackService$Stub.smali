.class public abstract Lcom/oppo/music/service/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/oppo/music/service/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/service/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.music.service.IMediaPlaybackService"

.field static final TRANSACTION_addTracks:I = 0xd

.field static final TRANSACTION_getAlbumUnknownString:I = 0x22

.field static final TRANSACTION_getArtistUnknownString:I = 0x21

.field static final TRANSACTION_getBufferingPercent:I = 0x1c

.field static final TRANSACTION_getCueInnerPosition:I = 0xe

.field static final TRANSACTION_getCurrentCueTrack:I = 0xa

.field static final TRANSACTION_getCurrentPlaylistItem:I = 0x8

.field static final TRANSACTION_getCurrentPosition:I = 0x18

.field static final TRANSACTION_getCurrentTrack:I = 0x9

.field static final TRANSACTION_getDuration:I = 0x17

.field static final TRANSACTION_getLyricPath:I = 0x20

.field static final TRANSACTION_getMediaMountedCount:I = 0x1e

.field static final TRANSACTION_getPlayMode:I = 0x1a

.field static final TRANSACTION_getPlaylist:I = 0x6

.field static final TRANSACTION_getPlaylistCurrentPosition:I = 0x4

.field static final TRANSACTION_getPlaylistItem:I = 0x7

.field static final TRANSACTION_getPlaylistLength:I = 0x5

.field static final TRANSACTION_getTrack:I = 0xb

.field static final TRANSACTION_getTrackThumbPath:I = 0x1f

.field static final TRANSACTION_isBufferingBlocked:I = 0x1b

.field static final TRANSACTION_isPlaying:I = 0x10

.field static final TRANSACTION_next:I = 0x15

.field static final TRANSACTION_openPlaylist:I = 0x2

.field static final TRANSACTION_openPlaylistItem:I = 0x1

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x13

.field static final TRANSACTION_previous:I = 0x14

.field static final TRANSACTION_removeTracks:I = 0xc

.field static final TRANSACTION_seekTo:I = 0x16

.field static final TRANSACTION_setCueInnerPosition:I = 0xf

.field static final TRANSACTION_setPlayMode:I = 0x19

.field static final TRANSACTION_setPlayerAutoSave:I = 0x23

.field static final TRANSACTION_setPlayerVolume:I = 0x24

.field static final TRANSACTION_setPlaylistCurrentPosition:I = 0x3

.field static final TRANSACTION_shakeSwitch:I = 0x1d

.field static final TRANSACTION_stop:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/music/service/IMediaPlaybackService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.oppo.music.service.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oppo/music/service/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oppo/music/service/IMediaPlaybackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 55
    .local v0, "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->openPlaylistItem(Lcom/oppo/music/media/PlaylistItem;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :sswitch_2
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    sget-object v4, Lcom/oppo/music/media/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/media/Playlist;

    .line 70
    .local v0, "_arg0":Lcom/oppo/music/media/Playlist;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->openPlaylist(Lcom/oppo/music/media/Playlist;I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/oppo/music/media/Playlist;
    .end local v1    # "_arg1":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/music/media/Playlist;
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":Lcom/oppo/music/media/Playlist;
    :sswitch_3
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlaylistCurrentPosition(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistCurrentPosition()I

    move-result v2

    .line 88
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistLength()I

    move-result v2

    .line 96
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    .end local v2    # "_result":I
    :sswitch_6
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylist()Lcom/oppo/music/media/Playlist;

    move-result-object v2

    .line 104
    .local v2, "_result":Lcom/oppo/music/media/Playlist;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/Playlist;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 110
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v2    # "_result":Lcom/oppo/music/media/Playlist;
    :sswitch_7
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlaylistItem(I)Lcom/oppo/music/media/PlaylistItem;

    move-result-object v2

    .line 120
    .local v2, "_result":Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/PlaylistItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 126
    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Lcom/oppo/music/media/PlaylistItem;
    :sswitch_8
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentPlaylistItem()Lcom/oppo/music/media/PlaylistItem;

    move-result-object v2

    .line 134
    .restart local v2    # "_result":Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/PlaylistItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 140
    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v2    # "_result":Lcom/oppo/music/media/PlaylistItem;
    :sswitch_9
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentTrack()Lcom/oppo/music/media/Track;

    move-result-object v2

    .line 148
    .local v2, "_result":Lcom/oppo/music/media/Track;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v2, :cond_5

    .line 150
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 154
    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v2    # "_result":Lcom/oppo/music/media/Track;
    :sswitch_a
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentCueTrack()Lcom/oppo/music/media/Track;

    move-result-object v2

    .line 162
    .restart local v2    # "_result":Lcom/oppo/music/media/Track;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v2, :cond_6

    .line 164
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 168
    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v2    # "_result":Lcom/oppo/music/media/Track;
    :sswitch_b
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    sget-object v6, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 182
    .local v0, "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getTrack(Lcom/oppo/music/media/PlaylistItem;)Lcom/oppo/music/media/Track;

    move-result-object v2

    .line 183
    .restart local v2    # "_result":Lcom/oppo/music/media/Track;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v2, :cond_8

    .line 185
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v2, p3, v5}, Lcom/oppo/music/media/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "_result":Lcom/oppo/music/media/Track;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    goto :goto_3

    .line 189
    .restart local v2    # "_result":Lcom/oppo/music/media/Track;
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "_result":Lcom/oppo/music/media/Track;
    :sswitch_c
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 198
    .local v0, "_arg0":[J
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->removeTracks([J)I

    move-result v2

    .line 199
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "_arg0":[J
    .end local v2    # "_result":I
    :sswitch_d
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    sget-object v4, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/music/media/PlaylistItem;

    .line 209
    .local v0, "_arg0":[Lcom/oppo/music/media/PlaylistItem;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->addTracks([Lcom/oppo/music/media/PlaylistItem;I)I

    move-result v2

    .line 211
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":[Lcom/oppo/music/media/PlaylistItem;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_e
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCueInnerPosition()I

    move-result v2

    .line 219
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 225
    .end local v2    # "_result":I
    :sswitch_f
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setCueInnerPosition(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":I
    :sswitch_10
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v2

    .line 236
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 242
    .end local v2    # "_result":Z
    :sswitch_11
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->stop()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    :sswitch_12
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->pause()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    :sswitch_13
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->play()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 263
    :sswitch_14
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->previous()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    :sswitch_15
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->next()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    :sswitch_16
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->seekTo(I)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getDuration()J

    move-result-wide v2

    .line 288
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 294
    .end local v2    # "_result":J
    :sswitch_18
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getCurrentPosition()J

    move-result-wide v2

    .line 296
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 302
    .end local v2    # "_result":J
    :sswitch_19
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayMode(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":I
    :sswitch_1a
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getPlayMode()I

    move-result v2

    .line 313
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v2    # "_result":I
    :sswitch_1b
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->isBufferingBlocked()Z

    move-result v2

    .line 321
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v2, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v2    # "_result":Z
    :sswitch_1c
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getBufferingPercent()I

    move-result v2

    .line 329
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    .end local v2    # "_result":I
    :sswitch_1d
    const-string v6, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v0, v5

    .line 338
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->shakeSwitch(Z)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_b
    move v0, v4

    .line 337
    goto :goto_4

    .line 344
    :sswitch_1e
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v2

    .line 346
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v2    # "_result":I
    :sswitch_1f
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 355
    sget-object v4, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 360
    .local v0, "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getTrackThumbPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "_result":Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    goto :goto_5

    .line 367
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :sswitch_20
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 370
    sget-object v4, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/music/media/PlaylistItem;

    .line 375
    .restart local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getLyricPath(Lcom/oppo/music/media/PlaylistItem;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    .end local v2    # "_result":Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    goto :goto_6

    .line 382
    .end local v0    # "_arg0":Lcom/oppo/music/media/PlaylistItem;
    :sswitch_21
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getArtistUnknownString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->getAlbumUnknownString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayerAutoSave()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 405
    :sswitch_24
    const-string v4, "com.oppo.music.service.IMediaPlaybackService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 408
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/oppo/music/service/IMediaPlaybackService$Stub;->setPlayerVolume(F)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
