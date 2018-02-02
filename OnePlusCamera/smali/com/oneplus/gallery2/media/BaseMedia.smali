.class public abstract Lcom/oneplus/gallery2/media/BaseMedia;
.super Ljava/lang/Object;
.source "BaseMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# static fields
.field private static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I


# instance fields
.field private m_Extra:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

.field private final m_Source:Lcom/oneplus/gallery2/media/MediaSource;


# direct methods
.method static synthetic $SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/oneplus/gallery2/media/BaseMedia;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/gallery2/media/MediaType;->values()[Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->UNKNOWN:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/oneplus/gallery2/media/BaseMedia;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType:[I

    return-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    .line 37
    invoke-static {}, Lcom/oneplus/gallery2/media/BaseMedia;->$SWITCH_TABLE$com$oneplus$gallery2$media$MediaType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/gallery2/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid media type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    iput-object p2, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

    .line 47
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    .line 48
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToAlbum(JI)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public canAddToAlbum()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected clearExtras()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    .line 73
    return-void
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method public getEffectedMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    return-object v0
.end method

.method public getEmbeddedThumbnailImageSize(II[II)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    return-object p2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 121
    return-object v0
.end method

.method public getFileNameExtension()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_1

    .line 138
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 137
    :cond_1
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    return-object v0
.end method

.method public getPreviousAddress()Landroid/location/Address;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method

.method public getPreviousFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    return-object v0
.end method

.method public getSource()Lcom/oneplus/gallery2/media/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    return-object v0
.end method

.method public getType()Lcom/oneplus/gallery2/media/MediaType;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_MediaType:Lcom/oneplus/gallery2/media/MediaType;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public isDependencyThread()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->isDependencyThread()Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public isParentVisible()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public isShareable()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibilityChangeSupported()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public openInputStreamForEmbeddedThumbnailImage(IILcom/oneplus/base/Ref;I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No embedded thumbnail image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareSharing(Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 312
    if-nez v0, :cond_1

    .line 313
    :cond_0
    return-object v2

    .line 312
    :cond_1
    if-eqz v1, :cond_0

    .line 314
    if-nez p1, :cond_2

    .line 316
    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "Prepare Sharing"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 315
    :cond_2
    sget-object v2, Lcom/oneplus/gallery2/media/PrepareSharingResult;->SUCCESS:Lcom/oneplus/gallery2/media/PrepareSharingResult;

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/oneplus/gallery2/media/PrepareSharingCallback;->onPrepared(Lcom/oneplus/gallery2/media/Media;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/PrepareSharingResult;)V

    goto :goto_0
.end method

.method public putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Extra:Landroid/util/LongSparseArray;

    invoke-interface {p1}, Lcom/oneplus/gallery2/ExtraKey;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0
.end method

.method public removeFromAlbum(JI)Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public setFavorite(Z)Z
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(Z)Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method protected final verifyAccess()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMedia;->m_Source:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSource;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public view(I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 373
    return-object v0
.end method
