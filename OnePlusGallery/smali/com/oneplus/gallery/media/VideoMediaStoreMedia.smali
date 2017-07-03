.class Lcom/oneplus/gallery/media/VideoMediaStoreMedia;
.super Lcom/oneplus/gallery/media/MediaStoreMedia;
.source "VideoMediaStoreMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/VideoMedia;


# static fields
.field private static final PRINT_LOGS:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final USE_METADATA_TAKEN_TIME:Z


# instance fields
.field private m_Duration:J

.field private volatile m_IsSlowMotion:Z

.field private volatile m_IsTimeLapse:Z

.field private m_Metadata:Lcom/oneplus/media/VideoMetadata;

.field private m_MetadataFileSize:J

.field private m_MetadataFileTime:J

.field private m_ShouldAddToCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMedia;-><init>(Landroid/net/Uri;Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Landroid/os/Handler;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    .line 50
    return-void
.end method

.method private addInfoToCache()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getMediaInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 56
    .local v0, "mediaInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "_size"

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "date_modified"

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getMediaInfoCache()Lcom/oneplus/gallery/cache/MediaInfoLruCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/gallery/cache/MediaInfoLruCache;->add(Ljava/io/Serializable;Ljava/lang/Object;)Z

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    .line 64
    return-void
.end method

.method public static getContentUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 73
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/oneplus/database/CursorUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTakenTimeFromFile(Ljava/lang/String;Lcom/oneplus/base/Ref;)J
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/Ref",
            "<",
            "Landroid/media/MediaMetadataRetriever;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "retrieverRef":Lcom/oneplus/base/Ref;, "Lcom/oneplus/base/Ref<Landroid/media/MediaMetadataRetriever;>;"
    if-nez p0, :cond_1

    .line 97
    const-wide/16 v6, 0x0

    .line 139
    :cond_0
    :goto_0
    return-wide v6

    .line 98
    :cond_1
    const-wide/16 v6, 0x0

    .line 99
    .local v6, "takenTime":J
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/oneplus/base/Ref;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaMetadataRetriever;

    move-object v4, v9

    .line 100
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_1
    if-nez p1, :cond_8

    const/4 v0, 0x1

    .line 103
    .local v0, "closeRetriever":Z
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 104
    .local v10, "time":J
    if-nez v4, :cond_3

    .line 106
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_2

    .line 109
    invoke-interface {p1, v5}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move-object v4, v5

    .line 111
    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_3
    const/4 v9, 0x5

    :try_start_2
    invoke-virtual {v4, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "takenTimeStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v10, v12, v10

    .line 113
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "null"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 114
    sget-object v9, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAKEN_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 115
    :cond_4
    const-wide/16 v12, 0x64

    cmp-long v9, v10, v12

    if-ltz v9, :cond_5

    .line 116
    sget-object v9, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTakenTimeFromFile() - Take "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms to get taken time from video: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 125
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 127
    .end local v8    # "takenTimeStr":Ljava/lang/String;
    .end local v10    # "time":J
    :cond_6
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-gtz v9, :cond_0

    .line 131
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v6

    goto/16 :goto_0

    .line 99
    .end local v0    # "closeRetriever":Z
    .end local v3    # "file":Ljava/io/File;
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 100
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 118
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "closeRetriever":Z
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_4
    :try_start_4
    sget-object v9, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v12, "getTakenTimeFromFile() - Fail to get taken time from video"

    invoke-static {v9, v12, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 125
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    .line 124
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_9
    throw v9

    .line 134
    :catch_1
    move-exception v2

    .line 136
    .local v2, "ex2":Ljava/lang/Throwable;
    sget-object v9, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v12, "setupTakenTime() - Fail to setup modified time"

    invoke-static {v9, v12, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 124
    .end local v2    # "ex2":Ljava/lang/Throwable;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v10    # "time":J
    :catchall_1
    move-exception v9

    move-object v4, v5

    .local v4, "retriever":Ljava/lang/Object;
    goto :goto_5

    .line 118
    .end local v4    # "retriever":Ljava/lang/Object;
    :catch_2
    move-exception v1

    move-object v4, v5

    .restart local v4    # "retriever":Ljava/lang/Object;
    goto :goto_4
.end method

.method private prepareMetadata()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 232
    iget-wide v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileSize:J

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    iget-wide v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileTime:J

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 233
    iget-object v5, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    if-eqz v5, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v4

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    if-eqz v5, :cond_3

    .line 236
    sget-object v5, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v6, "prepareMetadata() - Drop metadata because file has been updated"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    .line 238
    iput-wide v10, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileSize:J

    .line 239
    iput-wide v10, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileTime:J

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 246
    sget-object v1, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v5, "prepareMetadata() - No file path"

    invoke-static {v1, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 247
    goto :goto_0

    .line 251
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 252
    .local v2, "time":J
    invoke-static {v0}, Lcom/oneplus/media/VideoUtils;->readMetadata(Ljava/lang/String;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 254
    sget-object v5, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareMetadata() - Take "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to read metadata"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFileSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileSize:J

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_MetadataFileTime:J

    .line 259
    iget-object v5, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    if-nez v5, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method private swapSizeIfNeed([II)V
    .locals 4
    .param p1, "tempSize"    # [I
    .param p2, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    if-nez p1, :cond_0

    .line 366
    sget-object v1, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    const-string v2, "swapSizeIfNeed() - tempSize is null."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 369
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 374
    :sswitch_0
    aget v0, p1, v3

    .line 375
    .local v0, "newWidth":I
    aget v1, p1, v2

    aput v1, p1, v3

    .line 376
    aput v0, p1, v2

    goto :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    return-wide v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/oneplus/gallery/media/MediaType;->VIDEO:Lcom/oneplus/gallery/media/MediaType;

    return-object v0
.end method

.method public isSlowMotion()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsSlowMotion:Z

    return v0
.end method

.method public isTimeLapse()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsTimeLapse:Z

    return v0
.end method

.method protected onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "extraInfo"    # Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .param p3, "fromConstructor"    # Z

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/gallery/media/MediaStoreMedia;->onUpdate(Landroid/database/Cursor;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;Z)Z

    move-result v0

    .line 174
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getMediaInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 177
    .local v1, "mediaInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-wide v4, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    .line 178
    .local v4, "prevDuration":J
    const-string v7, "duration"

    const-wide/16 v8, 0x0

    invoke-static {p1, v7, v8, v9}, Lcom/oneplus/database/CursorUtils;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    .line 179
    iget-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 182
    const-string v7, "duration"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 184
    const-string v7, "duration"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    .line 199
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 200
    iget-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_6

    const/4 v0, 0x1

    .line 203
    :cond_1
    :goto_1
    if-eqz p2, :cond_3

    .line 206
    iget v2, p2, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 207
    .local v2, "opFlags":I
    iget-boolean v3, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsSlowMotion:Z

    .line 208
    .local v3, "prevSlowMotion":Z
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsSlowMotion:Z

    .line 209
    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 210
    iget-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsSlowMotion:Z

    if-eq v3, v7, :cond_8

    const/4 v0, 0x1

    .line 213
    :cond_2
    :goto_3
    iget-boolean v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsTimeLapse:Z

    .line 214
    .local v6, "prevTimeLapse":Z
    iget-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsSlowMotion:Z

    if-nez v7, :cond_9

    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsTimeLapse:Z

    .line 215
    if-nez v0, :cond_3

    if-nez p3, :cond_3

    .line 216
    iget-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_IsTimeLapse:Z

    if-eq v6, v7, :cond_a

    const/4 v0, 0x1

    .line 220
    .end local v2    # "opFlags":I
    .end local v3    # "prevSlowMotion":Z
    .end local v6    # "prevTimeLapse":Z
    :cond_3
    :goto_5
    iget-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    if-eqz v7, :cond_4

    .line 221
    invoke-direct {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->addInfoToCache()V

    .line 224
    :cond_4
    return v0

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->prepareMetadata()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    iget-object v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    sget-object v8, Lcom/oneplus/media/VideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v8}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    .line 194
    const-string v7, "duration"

    iget-wide v8, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Duration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    goto :goto_0

    .line 200
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 208
    .restart local v2    # "opFlags":I
    .restart local v3    # "prevSlowMotion":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 210
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 214
    .restart local v6    # "prevTimeLapse":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 216
    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected setupSize(Landroid/database/Cursor;[I)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "result"    # [I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 268
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 269
    .local v2, "tempSize":[I
    invoke-super {p0, p1, v2}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupSize(Landroid/database/Cursor;[I)V

    .line 271
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getMediaInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 272
    .local v0, "mediaInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 275
    .local v1, "rotation":I
    const-string v3, "key_orientation"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    const-string v3, "key_orientation"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 280
    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    aput v3, v2, v7

    .line 281
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    aput v3, v2, v6

    .line 282
    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->swapSizeIfNeed([II)V

    .line 308
    :cond_0
    :goto_0
    aget v3, v2, v7

    aput v3, p2, v7

    .line 309
    aget v3, v2, v6

    aput v3, p2, v6

    .line 310
    return-void

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->prepareMetadata()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    aget v3, v2, v7

    if-lez v3, :cond_2

    aget v3, v2, v6

    if-gtz v3, :cond_3

    .line 292
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    sget-object v4, Lcom/oneplus/media/VideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v7

    .line 293
    iget-object v3, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    sget-object v4, Lcom/oneplus/media/VideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v6

    .line 295
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_Metadata:Lcom/oneplus/media/VideoMetadata;

    sget-object v4, Lcom/oneplus/media/VideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v3, v4}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 298
    const-string v3, "key_orientation"

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v3, "width"

    aget v4, v2, v7

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "height"

    aget v4, v2, v6

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iput-boolean v6, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    .line 304
    invoke-direct {p0, v2, v1}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->swapSizeIfNeed([II)V

    goto :goto_0
.end method

.method protected setupTakenTime(Landroid/database/Cursor;)J
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/oneplus/gallery/media/MediaStoreMedia;->setupTakenTime(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 321
    .local v2, "takenTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 323
    sget-object v1, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupTakenTime() - No taken time for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in media store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getMediaInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 327
    .local v0, "mediaInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "datetaken"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string v1, "datetaken"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 357
    .end local v0    # "mediaInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-wide v2

    .line 349
    .restart local v0    # "mediaInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->getLastModifiedTime()J

    move-result-wide v2

    .line 352
    const-string v1, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/gallery/media/VideoMediaStoreMedia;->m_ShouldAddToCache:Z

    goto :goto_0
.end method
