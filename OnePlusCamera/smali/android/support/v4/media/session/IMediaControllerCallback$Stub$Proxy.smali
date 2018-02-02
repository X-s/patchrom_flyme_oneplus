.class Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 153
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 160
    return-object v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 166
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 173
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 169
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 264
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 270
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 266
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 216
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 222
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 218
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 198
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 204
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 200
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 234
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 246
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 248
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 249
    invoke-static {p1, v1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onSessionDestroyed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 185
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 282
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 288
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v1, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 284
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
