.class abstract Lcom/oneplus/gallery2/media/MtpMedia;
.super Lcom/oneplus/gallery2/media/BaseMedia;
.source "MtpMedia.java"


# static fields
.field static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final INTERNAL_FLAG_RELEASED:I = 0x1

.field public static final OBJECT_FORMATS:[I


# instance fields
.field private m_CacheKey:Lcom/oneplus/gallery2/media/MediaCacheKey;

.field private final m_DeviceId:I

.field private m_FileSize:J

.field private final m_Id:Ljava/lang/String;

.field private m_InternalFlags:I

.field private m_LastModifiedTime:J

.field private m_MimeType:Ljava/lang/String;

.field private final m_ObjectId:I

.field private m_PrevTakenTime:J

.field private m_TakenTime:J

.field private m_ThumbHeight:I

.field private m_ThumbWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x5

    .line 20
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3804

    .line 22
    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3801

    .line 23
    aput v2, v0, v1

    const/16 v1, 0x3807

    .line 24
    aput v1, v0, v3

    const/4 v1, 0x3

    const/16 v2, 0x3808

    .line 25
    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x380b

    .line 29
    aput v2, v0, v1

    .line 20
    sput-object v0, Lcom/oneplus/gallery2/media/MtpMedia;->OBJECT_FORMATS:[I

    .line 43
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/MtpMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Lcom/oneplus/gallery2/media/MediaType;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMedia;-><init>(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 66
    invoke-virtual {p3}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    .line 67
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    .line 68
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MtpMedia;->getId(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_Id:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p4, v0}, Lcom/oneplus/gallery2/media/MtpMedia;->onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I

    .line 70
    return-void
.end method

.method static create(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Lcom/oneplus/gallery2/media/MtpMedia;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    return-object v4

    .line 90
    :sswitch_0
    new-instance v0, Lcom/oneplus/gallery2/media/PhotoMtpMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/PhotoMtpMedia;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V

    return-object v0

    .line 96
    :sswitch_1
    new-instance v0, Lcom/oneplus/gallery2/media/VideoMtpMedia;

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/VideoMtpMedia;-><init>(Lcom/oneplus/gallery2/media/MtpMediaSource;Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    const-class v1, Lcom/oneplus/gallery2/media/MtpMedia;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "create() - Fail to create media for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-object v4

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_1
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3802 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x3808 -> :sswitch_0
        0x380a -> :sswitch_0
        0x380b -> :sswitch_0
        0x380d -> :sswitch_0
        0x380f -> :sswitch_0
        0x3810 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method static getId(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getId(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MtpMedia;->getId(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeTypeFromObjectFormat(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    .line 244
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "video/3gpp"

    .line 216
    return-object v0

    :sswitch_1
    const-string/jumbo v0, "video/x-ms-asf"

    .line 218
    return-object v0

    :sswitch_2
    const-string/jumbo v0, "video/x-msvideo"

    .line 220
    return-object v0

    :sswitch_3
    const-string/jumbo v0, "image/bmp"

    .line 222
    return-object v0

    :sswitch_4
    const-string/jumbo v0, "image/jpeg"

    .line 225
    return-object v0

    :sswitch_5
    const-string/jumbo v0, "image/gif"

    .line 227
    return-object v0

    :sswitch_6
    const-string/jumbo v0, "image/jp2"

    .line 229
    return-object v0

    :sswitch_7
    const-string/jumbo v0, "image/jpx"

    .line 231
    return-object v0

    :sswitch_8
    const-string/jumbo v0, "video/mp4"

    .line 233
    return-object v0

    :sswitch_9
    const-string/jumbo v0, "image/x-pict"

    .line 235
    return-object v0

    :sswitch_a
    const-string/jumbo v0, "image/png"

    .line 237
    return-object v0

    :sswitch_b
    const-string/jumbo v0, "image/tiff"

    .line 240
    return-object v0

    :sswitch_c
    const-string/jumbo v0, "video/x-ms-wmv"

    .line 242
    return-object v0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_2
        0x300c -> :sswitch_1
        0x3801 -> :sswitch_4
        0x3802 -> :sswitch_b
        0x3804 -> :sswitch_3
        0x3807 -> :sswitch_5
        0x3808 -> :sswitch_4
        0x380a -> :sswitch_9
        0x380b -> :sswitch_a
        0x380d -> :sswitch_b
        0x380f -> :sswitch_6
        0x3810 -> :sswitch_7
        0xb981 -> :sswitch_c
        0xb982 -> :sswitch_8
        0xb984 -> :sswitch_0
    .end sparse-switch
.end method

.method static parseId(Ljava/lang/String;Lcom/oneplus/base/Ref;Lcom/oneplus/base/Ref;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    if-eqz p0, :cond_0

    const-string/jumbo v0, "MTP/"

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 376
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 380
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 381
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 382
    if-nez p1, :cond_3

    .line 384
    :goto_0
    if-nez p2, :cond_4

    .line 386
    :goto_1
    return v4

    .line 372
    :cond_0
    return v3

    .line 374
    :cond_1
    return v3

    .line 377
    :cond_2
    return v3

    .line 383
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 390
    return v3

    .line 385
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public delete(Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/gallery2/media/MtpMediaSource;->deleteMedia(Lcom/oneplus/gallery2/media/MtpMedia;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Lcom/oneplus/gallery2/media/MediaCacheKey;
    .locals 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_CacheKey:Lcom/oneplus/gallery2/media/MediaCacheKey;

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_CacheKey:Lcom/oneplus/gallery2/media/MediaCacheKey;

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    iget v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_LastModifiedTime:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/oneplus/gallery2/media/MtpMediaSource;->createMediaCacheKey(IIJ)Lcom/oneplus/gallery2/media/MediaCacheKey;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_CacheKey:Lcom/oneplus/gallery2/media/MediaCacheKey;

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    return-object v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    return v0
.end method

.method public getEmbeddedThumbnailImageSize(II[II)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbWidth:I

    if-gtz v0, :cond_1

    .line 147
    :cond_0
    return v1

    .line 146
    :cond_1
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbHeight:I

    if-lez v0, :cond_0

    .line 148
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbWidth:I

    aput v0, p3, v1

    .line 149
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbHeight:I

    aput v0, p3, v2

    .line 150
    return v2
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_FileSize:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_LastModifiedTime:J

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_MimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    return v0
.end method

.method public getPreviousLocation()Landroid/location/Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    return-object v0
.end method

.method public getPreviousTakenTime()J
    .locals 2

    .prologue
    .line 268
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_PrevTakenTime:J

    return-wide v0
.end method

.method public getTakenTime()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_TakenTime:J

    return-wide v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_InternalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v1

    int-to-long v2, v1

    .line 314
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_FileSize:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 316
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_FileSize:J

    .line 317
    sget v0, Lcom/oneplus/gallery2/media/MtpMedia;->FLAG_FILE_SIZE_CHANGED:I

    or-int/lit8 v0, v0, 0x0

    .line 321
    :cond_0
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getDateModified()J

    move-result-wide v2

    .line 322
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_LastModifiedTime:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 324
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_LastModifiedTime:J

    .line 325
    sget v1, Lcom/oneplus/gallery2/media/MtpMedia;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    or-int/2addr v0, v1

    .line 329
    :cond_1
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getFormat()I

    move-result v1

    invoke-static {v1}, Lcom/oneplus/gallery2/media/MtpMedia;->getMimeTypeFromObjectFormat(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_MimeType:Ljava/lang/String;

    .line 332
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getDateCreated()J

    move-result-wide v2

    .line 333
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_TakenTime:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 335
    iget-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_TakenTime:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_PrevTakenTime:J

    .line 336
    iput-wide v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_TakenTime:J

    .line 337
    sget v1, Lcom/oneplus/gallery2/media/MtpMedia;->FLAG_TAKEN_TIME_CHANGED:I

    or-int/2addr v0, v1

    .line 341
    :cond_2
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getThumbPixWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbWidth:I

    .line 342
    invoke-virtual {p2}, Landroid/mtp/MtpObjectInfo;->getThumbPixHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ThumbHeight:I

    const/4 v1, 0x0

    .line 345
    iput-object v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_CacheKey:Lcom/oneplus/gallery2/media/MediaCacheKey;

    .line 348
    return v0
.end method

.method public openInputStream(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    iget v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MtpMediaSource;->openMtpObjectInputStream(II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openInputStreamForEmbeddedThumbnailImage(III)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MtpMedia;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MtpMediaSource;

    iget v1, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_DeviceId:I

    iget v2, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_ObjectId:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/MtpMediaSource;->openMtpObjectThumbnailImageInputStream(II)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_InternalFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/gallery2/media/MtpMedia;->m_InternalFlags:I

    .line 399
    return-void
.end method

.method public final update(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/gallery2/media/MtpMedia;->onUpdate(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;Z)I

    move-result v0

    return v0
.end method
